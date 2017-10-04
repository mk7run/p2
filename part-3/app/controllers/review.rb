# display all reviews of a restaurant
get '/restaurants/:id/reviews' do
  @restaurant = Restaurant.find(params[:id])
  @restaurant_reviews = @restaurant.reviews
  erb :"/reviews/show"
end

post '/restaurants/:restaurant_id/reviews' do
  authenticate!
  @restaurant = Restaurant.find(params[:restaurant_id])
  @new_review = Review.new(params[:review])
  @new_review.reviewer_id = current_user.id
  @new_review.restaurant_id = params[:restaurant_id]

  if @new_review.save && @restaurant
    @restaurant.reviews << @new_review
    redirect "restaurants/#{params[:restaurant_id]}"
  else
    status 422
    @errors = @new_review.errors.full_messages
    erb :"/restaurants/show"
  end
end

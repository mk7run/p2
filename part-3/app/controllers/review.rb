# display all reviews of a restaurant
get '/restaurants/:id/reviews' do
  @restaurant = Restaurant.find(params[:id])
  @restaurant_reviews = @restaurant.reviews
  erb :"reviews/show"
end

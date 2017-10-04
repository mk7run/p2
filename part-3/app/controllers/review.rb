# display all reviews of a restaurant
get '/restaurants/:id/reviews' do
  @restaurant = Restaurant.find(params[:id])
  @reviews = @restaurant.reviews
  erb :"reviews/index"
end

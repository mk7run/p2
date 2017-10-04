# RESTFUL Routing:
# display all restaurants
get '/restaurants' do
  @restaurants = Restaurant.all
  erb :"/restaurants/index"
end

# render a new restaurant form
get '/restaurants/new' do
  authenticate!
  erb :"/restaurants/new"
end

# create a new restaurant
post '/restaurants' do
  authenticate!
  @restaurant = Restaurant.new(params[:restaurant])

  if @restaurant.save
    current_user.created_restaurants << @restaurant
    redirect '/'
  else
    status 422
    @errors = @restaurant.errors.full_messages
    erb :"/restaurants/new"
  end
end

# display a specific restaurant
get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :"/restaurants/show"
end

# render an edit form for a restaurant
get '/restaurants/:id/edit' do
  authenticate!
  @restaurant = Restaurant.find(params[:id])
  authorize!(@restaurant.creator)
  erb :"/restaurants/edit"
end

# update a restaurant
put '/restaurants/:id' do
  authenticate!
  @restaurant = Restaurant.find(params[:id])
  authorize!(@restaurant.creator)
  if @restaurant.update(params[:restaurant])
    redirect "/restaurants/#{params[:id]}"
  else
    @errors = @restaurant.errors.full_messages
    erb :"/restaurants/edit"
  end
end

# delete a specific restaurant
delete '/restaurants/:id' do
  authenticate!
  @restaurant = Restaurant.find(params[:id])
  authorize!(@restaurant.creator)
  @restaurant.destroy
  redirect '/restaurants'
end


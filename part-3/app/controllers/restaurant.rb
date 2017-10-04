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
  authorized!
  erb :"/restaurants/:id/edit"
end

# update a restaurant
put '/restaurants/:id' do
  authenticate!
  authorized!
  redirect "/restaurants/#{params[:id]}"
end

# delete a specific restaurant
delete '/restaurants/:id' do
  authenticate!
  authorized!
  redirect '/restaurants'
end


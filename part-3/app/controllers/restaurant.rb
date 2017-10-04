# RESTFUL Routing:
# display all restaurants
get '/restaurants' do
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
  redirect '/restaurants'
end

# display a specific restaurant
get '/restaurants/:id' do
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


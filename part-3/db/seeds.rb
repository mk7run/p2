require 'faker'

User.create!(first_name: "melissa", last_name:
  "kanhirun", username: "mk7run", email: "mk7run@gmail.com", password: "password")


User.create!(first_name: "vikky", last_name:
  "luc", username: "vjeniluc", email: "vjeniluc@gmail.com", password: "password")


User.create!(first_name: "mitch", last_name:
  "mele", username: "mmele", email: "mmele@gmail.com", password: "password")


User.create!(first_name: "baska", last_name:
  "batbold", username: "itsbaska", email: "itsbaska@gmail.com", password: "password")

10.times do
  Restaurant.create!(name: Faker::Hipster.word.capitalize, cuisine: Faker::Demographic.demonym, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code, creator_id: rand(1..4))
end


20.times do
  Review.create!(content: Faker::Lorem.paragraph(2), reviewer_id: rand(2..4), rating: rand(1..10),restaurant_id: rand(1..4))
end

5.times do
  Review.create!(content: Faker::Lorem.paragraph(2), reviewer_id: 1, rating: rand(5..10), restaurant_id: rand(1..4))
end

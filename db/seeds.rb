# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#u1 = User.create(username: "shan99", name: "Shiro Han", password: '123', location: 'Franklin Lakes', photo_url: 'https://i.imgur.com/pZ4FtFC.jpg', bio: 'asdfasdf')
#r1 = Restaurant.create(name: "Chipotle", location: 'Franklin Lakes', photo_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Chipotle_Mexican_Grill_logo.svg/316px-Chipotle_Mexican_Grill_logo.svg.png', bio: 'chipotle mexican restaurant')
#review1 = Review.create(user: u1, restaurant: r1, rating: 5, content: 'text here')
#Comment.create(user: u1, review: review1, content: 'text here')

#require 'faker'

#all_users = User.all 
#all_restaurants = Restaurant.all

#40.times do 
    #User.create(username: Faker::Superhero.name, name: Faker::Name.unique.name, password: '1234567', location: Faker::Address.city, photo_url: Faker::Avatar.image(slug: "my-own-slug", size: "10x10", format: "jpg"), bio: Faker::GreekPhilosophers.quote)
#end 

#40.times do 
    #Restaurant.create(name: Faker::Restaurant.name, location: Faker::Address.street_address, bio: Faker::Restaurant.description)
#end 


#Review.create(user: u1, restaurant: all_restaurants.shuffle!.pop, rating: rand(10), content: Faker::Restaurant.review)

require 'rest-client'
require 'json'

response = RestClient.get 'http://opentable.herokuapp.com/api/restaurants?state=ny'

formatted_response = JSON.parse(response)
restaurants = formatted_response['restaurants']

for i in 0...restaurants.length
    Restaurant.create(name: restaurants[i]['name'], address: restaurants[i]['address'], state: restaurants[i]['state'], city: restaurants[i]['city'], zip: restaurants[i]['postal_code'], price: restaurants[i]['price'], phone: restaurants[i]['phone'], reserve_url: restaurants[i]['reserve_url'])
end 

#for i in 0...restaurants.length 
    #p restaurants[i]['postal_code']
#end 


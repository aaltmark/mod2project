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

# require 'rest-client'
# require 'json'

# response = RestClient.get 'http://opentable.herokuapp.com/api/restaurants?state=pa'

# formatted_response = JSON.parse(response)
# restaurants = formatted_response['restaurants']

# for i in 0...restaurants.length
#     Restaurant.create(name: restaurants[i]['name'], address: restaurants[i]['address'], state: restaurants[i]['state'], city: restaurants[i]['city'], zip: restaurants[i]['postal_code'], price: restaurants[i]['price'], phone: restaurants[i]['phone'], reserve_url: restaurants[i]['reserve_url'])
# end 

users = [
    {username: Faker::Superhero.name, name: "Alex Ortiz", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149P2DPGA-5bc46d19c029-512"},
    {username: Faker::Superhero.name, name: "Andrew Santos", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UL8B585HP-14e7e4df1c70-512"},
    {username: Faker::Superhero.name, name: "Andy Agus", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UQTV5GEFM-59b31a47e35f-512"},
    {username: Faker::Superhero.name, name: "Berel Levy", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149V71ZRR-179071fd3f16-512"},
    {username: Faker::Superhero.name, name: "Brandon Gubitosa", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149P2ATLJ-a175739d4005-512"},
    {username: Faker::Superhero.name, name: "Corey Lynch", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U011LC0U7GW-f7b87b95c922-512"},
    {username: Faker::Superhero.name, name: "Daniel Reyes", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0136GZTQSG-77e66445bb6c-512"},
    {username: Faker::Superhero.name, name: "Dolly Desir", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0130BRC3K4-9001c9b22325-512"},
    {username: Faker::Superhero.name, name: "Jeffrey Musselman", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UMC62QVAM-019eb6bf04b1-512"},
    {username: Faker::Superhero.name, name: "Leamsi Escribano", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149P2CRNE-50a2d608ab6c-512"},
    {username: Faker::Superhero.name, name: "Malcolm Staso", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U014ZJ9F1K2-d9c4863dcd04-512"},
    {username: Faker::Superhero.name, name: "Maleeha Bhuiyan", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0148BWV805-946025995b60-512"},
    {username: Faker::Superhero.name, name: "Maxwell Croy", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U014DQ3SKMK-8164c7778a8b-512"},
    {username: Faker::Superhero.name, name: "Maya Blevins", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149V711B5-b550a063d7f8-512"},
    {username: Faker::Superhero.name, name: "Melody Soriano", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149P29UH0-611bbf796682-512"},
    {username: Faker::Superhero.name, name: "Muhammad Hassan", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U014ZJ9C4HE-3e3623a4de5d-512"},
    {username: Faker::Superhero.name, name: "Paola Dolcemascolo", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UUNMDGQHG-384b0c170392-512"},
    {username: Faker::Superhero.name, name: "Rebecca Rosenberg", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U014ZJ9E3RN-0006b89adbe7-512"},
    {username: Faker::Superhero.name, name: "Rudy Guerrero", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U013V17QKQF-b9866186602f-512"},
    {username: Faker::Superhero.name, name: "Shadman Ahmed", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149V6VD1R-25fe7ef5f450-512"},
    {username: Faker::Superhero.name, name: "Stephen Galvan", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U014ZJ9GY6L-aca36055b09d-512"},
    {username: Faker::Superhero.name, name: "Tashawn Williams", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U7PSME4DA-8b811931b3d9-512"},
    {username: Faker::Superhero.name, name: "Travis Prol", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U0149P2ES90-c5e480b910c1-512"},
    {username: Faker::Superhero.name, name: "Eric Kim", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U91CXSUN4-3bac0a7f6a08-512"},
    {username: Faker::Superhero.name, name: "Greg Dwyer", location: "NYC", bio: Faker::Hipster.sentence, password: "123", photo_url: "https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512"}
]

users.each do |user| 
    User.create(user)
end 


#for i in 0...restaurants.length 
    #p restaurants[i]['postal_code']
#end 


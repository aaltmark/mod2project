# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "shan99", name: "Shiro Han", password: '123', location: 'Franklin Lakes', photo_url: 'https://i.imgur.com/pZ4FtFC.jpg', bio: 'asdfasdf')
r1 = Restaurant.create(name: "Chipotle", location: 'Franklin Lakes', photo_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Chipotle_Mexican_Grill_logo.svg/316px-Chipotle_Mexican_Grill_logo.svg.png', bio: 'chipotle mexican restaurant', menu: 'asdfasdfasdf')
review1 = Review.create(user: u1, restaurant: r1, rating: 5, content: 'text here')
Comment.create(user: u1, review: review1, content: 'text here')
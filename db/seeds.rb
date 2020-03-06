

users = [
    user1 = User.create(name: "One", email: 'test-user1@event.com', password: 'password'),
    user2 = User.create(name: "Two", email: 'test-user2@event.com', password: 'password'),
    user3 = User.create(name: "Three", email: 'test-user3@event.com', password: 'password')
    ]
    users.each do |user|
      2.times do
        Artwork.create(
        title: Faker::Music.album,
        
        description: Faker::GreekPhilosophers.quote,
        price: 40,
        user_id: user1.id
        )
        
      end
      2.times do
        Artwork.create(
        title: Faker::Music.album,
        
        description: Faker::GreekPhilosophers.quote,
        price: 50,
        user_id: user2.id
        )
        
      end
      2.times do
        Artwork.create(
        title: Faker::Music.album,
        
        description: Faker::GreekPhilosophers.quote,
        price: 60,
        user_id: user3.id
        )
        
      end
    end# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

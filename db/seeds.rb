# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(username: Faker::Internet.user_name, name: Faker::Name.name, password: 'pw')
end

30.times do
  Follow.create(user_id: rand(1..10), follower_id: rand(1..10))
end

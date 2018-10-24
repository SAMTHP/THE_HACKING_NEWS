# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  user = User.create!(name: Faker::Company.name)
end
10.times do
  lien = Lien.create!(url: Faker::Company.name,user_id: rand(1..10))
end
10.times do
  comments = Commentary.create!(content: Faker::Company.name, user_id: rand(1..10), lien_id: rand(1..10))
end
10.times do
  user = CommentToCommentary.create!(content: Faker::Company.name, user_id: rand(1..10), commentary_id: rand(1..10))
end

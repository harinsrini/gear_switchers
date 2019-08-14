# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Killing the DB...."

Product.destroy_all
User.destroy_all

puts "Adding new infos..."


user = User.create(name: Faker::Name.name, email: Faker::Internet.email)

5.times do |p|
Product.create(name: Faker::Name.name,
  description: Faker::Lorem.sentence,
  price_per_day: '50',
  category: 'Ski',
  user: user)
end

5.times do |p|
Product.create(name: Faker::Name.name,
  description: Faker::Lorem.sentence,
  price_per_day: '50',
  category: 'Trekking',
  user: user)
end

5.times do |p|
Product.create(name: Faker::Name.name,
  description: Faker::Lorem.sentence,
  price_per_day: '50',
  category: 'cycling',
  user: user)
end


  puts "Created #{Product.count} products !!"
  puts "Created #{User.count} users !!"

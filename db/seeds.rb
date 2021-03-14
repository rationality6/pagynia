# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

array0 = ["감자","고구마","버섯","산나물","스포애니"]
array_length = array0.length

(1..300).each do |item|
  Item.create({
                 name: Faker::Name.name,
                 email: Faker::Internet.email,
                 spliter: array0[rand(array_length)],
                 age: rand(42)
               })
end

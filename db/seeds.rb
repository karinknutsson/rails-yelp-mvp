# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_number
  number = '+'
  12.times do
    digit = (1...10).to_a.sample
    number += digit.to_s
  end
  number
end

10.times do
  restaurant_name = Faker::BossaNova.song
  address = Faker::Address.street_address + ', ' + Faker::Address.city
  number = generate_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: restaurant_name, address: address, phone_number: number, category: category)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all
puts "Creating Flats..."

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  description = Faker::Restaurant.description
  price_per_night = rand(100..400)
  number_of_guests = rand(2..6)
  picture_url = ["image1.jpg", "image2.jpg", "image3.jpg", "image4.jpg"].sample(1)
  p Flat.create!(name: name, address: address, description:description, price_per_night: price_per_night, number_of_guests: number_of_guests, picture_url: picture_url[0])
end

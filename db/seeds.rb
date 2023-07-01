# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying the pets..."
Pet.destroy_all
puts "Done!"

puts "Creating 10 pets..."
10.times do 
  species = Pet::SPECIES.sample
  Pet.create!(
    name: Faker::Artist.name,
    species: species,
    color: Faker::Color.color_name,
    nb_legs: rand(0..8),
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today),
    address: Faker::Address.street_address,
    image_url: "https://wildcard.codestuff.io/#{species}/250/250"
  )
end
puts "Done!"

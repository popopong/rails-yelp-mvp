# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian" }
imperial = { name: "Imperial", address: "St Catherine", category: "chinese" }
tamjai = { name: "Tam Jai", address: "2A Nathan Road, Tsim Sha Tsui", category: "chinese" }
carol = { name: "Carol Bistro", address: "Miles End", category: "italian" }

[dishoom, pizza_east, imperial, tamjai, carol].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

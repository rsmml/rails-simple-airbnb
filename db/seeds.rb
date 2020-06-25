# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up DB'
Flat.destroy_all
puts 'DB is clean'

puts 'creating flats ...'

flat_london = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts "flat #{flat_london.id} created"

flat_paris = Flat.create!(
  name: 'Design and cosy flat close to Montmartre in Paris - Welkeys',
  address: '56 Rue du Four, 75006, Paris',
  description: 'Located a few steps away from Montmartre, this very nice and design apartment is ideal for 4 people.',
  price_per_night: 110,
  number_of_guests: 4
)

puts "flat #{flat_paris.id} created"

flat_berlin = Flat.create!(
  name: 'Super central & sunny room at Zionskirchplatz!',
  address: 'Kastanienallee 36, 10119, Berlin',
  description: 'Welcome to my home in the heart of vibrant Berlin center - a perfect home base for your Berlin adventure!',
  price_per_night: 50,
  number_of_guests: 2
)

puts "flat #{flat_berlin.id} created"

flat_italy = Flat.create!(
  name: 'Elegant Designer Flat in Bosco Verticale',
  address: 'Via Gaetano de Castillia, 16, 20124, Milano',
  description: 'Stand on the balcony and breathe in the fresh air produced by this innovative plant-covered high-rise building known as Bosco Verticale',
  price_per_night: 200,
  number_of_guests: 2
)

puts "flat #{flat_italy.id} created"

puts "All Flats created, a total of #{Flat.count} flats"

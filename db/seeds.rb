# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# Create Airports
Airport.create(code: 'SFO')
Airport.create(code: 'NYC')
Airport.create(code: 'LAX')
Airport.create(code: 'ORD')

# Create Flights
Flight.create(
  departure_airport_id: Airport.find_by(code: 'SFO').id,
  arrival_airport_id: Airport.find_by(code: 'NYC').id,
  start_datetime: '2024-07-15 09:00:00',
  duration: 360
)
Flight.create(
  departure_airport_id: Airport.find_by(code: 'NYC').id,
  arrival_airport_id: Airport.find_by(code: 'SFO').id,
  start_datetime: '2024-07-16 15:00:00',
  duration: 360
)

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
  departure_airport_id: Airport.find_by(code: 'SFO').id,
  arrival_airport_id: Airport.find_by(code: 'NYC').id,
  start_datetime: '2024-07-15 15:00:00',
  duration: 300
)

Flight.create(
  departure_airport_id: Airport.find_by(code: 'NYC').id,
  arrival_airport_id: Airport.find_by(code: 'SFO').id,
  start_datetime: '2024-07-16 15:00:00',
  duration: 320
)

class FlightsController < ApplicationController
  def index
    @departure_airports = Airport.all
    @arrival_airports = Airport.all
    @passengers = 1..4
    @flight_dates = Flight.pluck(:start_datetime).map { |date| date.to_date }.uniq 
  end
end

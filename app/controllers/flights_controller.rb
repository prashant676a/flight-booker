class FlightsController < ApplicationController
  def index
    @departure_airports = Airport.all
    @arrival_airports = Airport.all
    @passengers = 1..4
    @flight_dates = Flight.pluck(:start_datetime).map { |date| date.to_date }.uniq 
    
    if params[:departure_airport_id]
      @flights = Flight.where(
        departure_airport_id: params[:departure_airport_id].to_i,
        arrival_airport_id: params[:arrival_airport_id].to_i,
        start_datetime: Date.parse(params[:start_datetime]).all_day
      )

      # debugger
    end

    # private

    # def flight_params
    #   params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :start_datetime)
    # end

  end
end

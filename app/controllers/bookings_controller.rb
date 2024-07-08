class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight, num_passengers: params[:passengers].to_i)
    @passengers = Array.new(@booking.num_passengers) { Passenger.new }
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    
  end


  private
  def booking_params 
    params.require(:booking).permit(:flight_id,:num_passengers)
  end
end

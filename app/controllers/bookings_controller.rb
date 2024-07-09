class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight_id: @flight.id)
    @num_passengers = params[:passengers].to_i

    #build passengers according to num_passengers
    @passengers = @num_passengers.times { @booking.passengers.build }
    # debugger
     # Build additional fields for each passenger
    # @booking.passengers.each do |passenger|
    #   passenger.build_user_credentials
    # end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    
    if @booking.save
      @booking.passengers.each { |passenger| PassengerMailer.with(passenger: passenger).confirm_email.deliver_later }
      redirect_to booking_path(@booking)
    else
      @flight = Flight.find(params[:booking][:flight_id])
      render :new
    end

  end


  private
  def booking_params 
    params.require(:booking).permit(:flight_id,passengers_attributes: [:id,  :name, :email])
  end
end

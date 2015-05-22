class FlightsController < ApplicationController
  def index
    @valid_airports    = Flight.valid_airports   
    @date              = Flight.list_dates     
    @passenger_options = [1, 2, 3, 4]
    @flights           = Flight.search(params)
    @booking           = Booking.new
  end
end

 
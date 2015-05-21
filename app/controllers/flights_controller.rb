class FlightsController < ApplicationController
  def index
    @from_flight = Flight.all.map{|u| [ u.from_airport.name, u.from_airport_id ] }	   
    @to_flight = Flight.all.map{|u| [ u.to_airport.name, u.to_airport_id ] }
    @date = Flight.all.map{|u| [ u.departure_date, u.departure_date ] }
    
    unless params[:departure_date].nil?
      @flights = Flight.where("departure_date >= ? AND departure_date <= ? AND from_airport_id = ? AND to_airport_id = ?",  params[:departure_date], params[:departure_date].to_date + 1.day, params[:from_airport], params[:to_airport])
      @flight_dates = @flights.on_day(params[:departure_date])
    end
    #@booking = Booking.new
   end
end

 
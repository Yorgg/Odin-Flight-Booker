class FlightsController < ApplicationController
  def index
    @flight = Flight.new 
    @from_flight = Flight.all.map{|u| [ u.from_airport.name, u.from_airport_id ] }	   
    @to_flight = Flight.all.map{|u| [ u.to_airport.name, u.to_airport_id ] }
    @date = Flight.all.map{|u| [ u.departure_date.strftime("%m/%d/%Y"), u.departure_date ] }
   end
end

 
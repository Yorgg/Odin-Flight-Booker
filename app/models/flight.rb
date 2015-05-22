class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  has_many :bookings
 
  def self.valid_airports
  	Airport.all.collect{ |a| [ a.name, a.id ] }
  end

  def self.search(params)
    Flight.where(to_airport_id:  params[:to_airport],
                 from_airport_id: params[:from_airport],
                 departure_date:  Flight.range(params[:departure_date]) )                            
  end

  def self.list_dates
    Flight.all.map{ |f| f.departure_date.strftime('%B %d, %Y') }.uniq
  end

  def self.range(date)
  	unless  date.nil? || date.empty?
  	  DateTime.strptime(date, '%B %d, %Y').beginning_of_day..DateTime.strptime(date, '%B %d, %Y').end_of_day
  	end
  end

end

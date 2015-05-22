class AddReferenceToBookings < ActiveRecord::Migration
  def change
  	add_reference :bookings, :flight, index: true
  end
end

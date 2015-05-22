class AddReferenceToPassengers < ActiveRecord::Migration
  def change
  	 add_reference :passengers, :booking, index: true
  end
end

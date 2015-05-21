class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"

  scope :on_day, ->(time) { where("departure_date >= ? AND departure_date <= ?", time, time.to_date + 1.day) }
end

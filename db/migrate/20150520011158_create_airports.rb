class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name, index: true
      t.timestamps null: false
    end
  end
end

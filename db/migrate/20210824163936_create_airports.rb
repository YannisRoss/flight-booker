class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.timestamps
    end


    add_reference :airports, :outbound_flight, foreign_key: "flight_id"
    add_reference :airports, :inbound_flight, foreign_key: "flight_id"

  end
end

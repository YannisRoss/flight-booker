class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.timestamps
    end


    add_column :airports, :outbound_flight_id, :integer
    
    add_foreign_key :airports, :flight, column: :outbound_flight_id, primary_key: "airport_id"

    add_column :airports, :inbound_flight_id, :integer

    add_foreign_key :airports, :flight, column: :inbound_flight_id, primary_key: "airport_id"


  end
end

class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.date :flight_date
      t.time :departure_time
      t.time :arrival_time


      t.timestamps
    end

    #add_reference :flights, :departure_airport, foreign_key: true
    #add_reference :flights, :destination_airport, foreign_key: true
  end
end

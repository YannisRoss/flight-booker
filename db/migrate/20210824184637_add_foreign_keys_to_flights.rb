class AddForeignKeysToFlights < ActiveRecord::Migration[6.1]
  def change

    add_foreign_key  :flights, :airports, column: :departure_airport_id


    add_foreign_key  :flights, :airports, column: :destination_airport_id

  end
end

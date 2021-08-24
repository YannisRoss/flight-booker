class AddDepartureAirportIdAndDestinationAirportIdToFlights < ActiveRecord::Migration[6.1]
  def change

    add_reference :flights, :departure_airport
    add_reference :flights, :destination_airport
  end
end

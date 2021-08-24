class AddOutboundFlightIdAndInboundFlightIdToAirports < ActiveRecord::Migration[6.1]
  def change

    add_foreign_key  :airports, :flights, column: :outbound_flight_id

    add_foreign_key :airports, :flights, column: :inbound_flight_id
  end
end

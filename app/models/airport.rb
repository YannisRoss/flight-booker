class Airport < ApplicationRecord

    has_many :outbound_flights, foreign_key: "flight_id", class_name: "Flight", inverse_of: "departure_airport"
    has_many :inbound_flights, foreign_key: "flight_id", class_name: "Flight", inverse_of: "destination_airport"

end

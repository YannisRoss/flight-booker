class Airport < ApplicationRecord

    has_many :outbound_flights, class_name: "Flight", inverse_of: "departure_airport", foreign_key: "departure_airport_id"
    has_many :inbound_flights, class_name: "Flight", inverse_of: "destination_airport", foreign_key: "destination_airport_id"

end
#  has_many :outbound_flights, class_name: "Flight", inverse_of: "departure_airport"
#has_many :inbound_flights, class_name: "Flight", inverse_of: "destination_airport"

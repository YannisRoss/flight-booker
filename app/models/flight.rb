class Flight < ApplicationRecord

    belongs_to :departure_airport, foreign_key: "airport_id", class_name: "Airport"
    belongs_to :destination_airport, foreign_key: "airport_id", class_name: "Airport"


end

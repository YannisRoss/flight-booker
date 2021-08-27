class Flight < ApplicationRecord

    belongs_to :departure_airport,  class_name: "Airport", foreign_key: "departure_airport_id"
    belongs_to :destination_airport, class_name: "Airport", foreign_key: "destination_airport_id"

    has_many :bookings 
    has_many :passengers, through: :bookings

end


#  belongs_to :departure_airport,  class_name: "Airport", foreign_key: "departure_airport_id"
#belongs_to :destination_airport, class_name: "Airport", foreign_key: "destination_airport_id"


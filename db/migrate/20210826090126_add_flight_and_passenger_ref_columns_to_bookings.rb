class AddFlightAndPassengerRefColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :flight_id, :integer
    add_column :bookings, :passenger_id, :integer
  end
end

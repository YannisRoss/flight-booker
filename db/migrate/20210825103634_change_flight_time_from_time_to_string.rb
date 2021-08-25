class ChangeFlightTimeFromTimeToString < ActiveRecord::Migration[6.1]
  def change

    remove_column(:flights, :departure_time)
    remove_column(:flights, :arrival_time)


    add_column(:flights, :departure_time, :string)
    add_column(:flights, :arrival_time, :string)

  end
end

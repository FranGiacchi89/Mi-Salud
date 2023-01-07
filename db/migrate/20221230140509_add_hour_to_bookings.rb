class AddHourToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :hour, :time
  end
end

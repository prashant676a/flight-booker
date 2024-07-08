class AddColumnToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :num_passengers, :integer
  end
end

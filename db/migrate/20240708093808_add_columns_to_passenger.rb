class AddColumnsToPassenger < ActiveRecord::Migration[7.1]
  def change
    add_column :passengers, :booking_id, :integer
    # add_column :passengers, :flight_id, :integer
  end
end

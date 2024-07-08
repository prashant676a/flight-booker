class AddForeignKeyToPassengers < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :passengers, :bookings,  column: :booking_id
  end
end

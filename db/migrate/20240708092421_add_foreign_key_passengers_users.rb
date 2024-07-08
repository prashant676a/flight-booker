class AddForeignKeyPassengersUsers < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :passengers, :flights, column: :flight_id
  end
end

class RemoveColumnFromPassenger < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :passengers, :flights
    remove_column :passengers, :flight_id
  end
end

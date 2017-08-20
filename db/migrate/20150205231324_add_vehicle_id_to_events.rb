class AddVehicleIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :vehicle_id, :integer
  end
end

class AddCraneIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :crane_id, :integer
  end
end

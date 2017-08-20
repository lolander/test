class CreateVechicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :reg_num
      t.string :model
      t.integer :num_of_axle
    end
  end
end

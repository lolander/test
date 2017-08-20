class CreateCranes < ActiveRecord::Migration
  def change
    create_table :cranes do |t|
      t.string :name
      t.integer :size
      t.string :brand
      t.date :year
    end
  end
end

class AddDoneToEvents < ActiveRecord::Migration
  def change
    add_column :events, :done, :boolean
  end
end

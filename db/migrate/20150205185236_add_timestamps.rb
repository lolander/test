class AddTimestamps < ActiveRecord::Migration
  def change
    add_timestamps(:vehicles)
    add_timestamps(:cranes)
  end
end

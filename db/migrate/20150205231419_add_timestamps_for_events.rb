class AddTimestampsForEvents < ActiveRecord::Migration
  def change
    add_timestamps(:events)
  end
end

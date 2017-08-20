class AddAttachmentIdlablePicToCranes < ActiveRecord::Migration
  def self.up
    change_table :cranes do |t|
      t.attachment :idlable_pic
    end
  end

  def self.down
    remove_attachment :cranes, :idlable_pic
  end
end

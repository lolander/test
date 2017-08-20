class AddAttachmentProfilePicToVehicles < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :vehicles, :profile_pic
  end
end

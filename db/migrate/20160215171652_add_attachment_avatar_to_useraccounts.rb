class AddAttachmentAvatarToUseraccounts < ActiveRecord::Migration
  def self.up
    change_table :useraccounts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :useraccounts, :avatar
  end
end

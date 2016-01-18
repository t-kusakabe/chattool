class AddDetaToChats < ActiveRecord::Migration
  def change
    add_column :chats, :image, :text
    add_column :dms, :image, :text
  end
end

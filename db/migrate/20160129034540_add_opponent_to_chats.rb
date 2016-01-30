class AddOpponentToChats < ActiveRecord::Migration
  def change
    add_column :chats, :opponent, :text
  end
end

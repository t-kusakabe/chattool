class RemoveTo < ActiveRecord::Migration
  def change
    remove_column :chats, :opponent, :string
  end
end

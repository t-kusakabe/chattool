class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :comment
      t.string :contributor
      t.string :opponent
      t.timestamps
    end
  end
end

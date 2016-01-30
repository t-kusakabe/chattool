class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :group_name
      t.text :description
      t.timestamps
    end
  end
end

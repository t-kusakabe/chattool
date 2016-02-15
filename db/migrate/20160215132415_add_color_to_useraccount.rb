class AddColorToUseraccount < ActiveRecord::Migration
  def change
    add_column :useraccounts, :color, :string
  end
end

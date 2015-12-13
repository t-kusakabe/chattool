class AddAccountnameToUseraccounts < ActiveRecord::Migration
  def change
    add_column :useraccounts, :accountname, :string
  end
end

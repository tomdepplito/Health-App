class AddAddressToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :address, :string
    add_column :users, :address, :string
  end
end

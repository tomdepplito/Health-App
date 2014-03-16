class AddAdditionalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :additional, :text
  end
end

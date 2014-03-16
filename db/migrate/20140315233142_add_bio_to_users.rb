class AddBioToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :bio, :text
    add_column :users, :bio, :text
  end
end

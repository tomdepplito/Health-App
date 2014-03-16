class AddFamilyHistoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family_history, :text
  end
end

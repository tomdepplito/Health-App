class CreateHistories < ActiveRecord::Migration
  def change
    drop_table :histories

    create_table :histories do |t|
      t.string :illness_category
      t.string :illness_type
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :illness_category
      t.string :illness_type
      t.string :string
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end

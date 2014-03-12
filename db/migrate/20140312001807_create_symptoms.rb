class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.time :time
      t.integer :duration
      t.string :physician

      t.timestamps
    end
  end
end

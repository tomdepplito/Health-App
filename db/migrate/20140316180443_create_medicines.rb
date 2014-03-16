class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :medicine_family
      t.string :dosage
      t.string :notes

      t.timestamps
    end
  end
end

class CreateEndangeredSpecies < ActiveRecord::Migration
  def change
    create_table :endangered_species do |t|
      t.string :name
      t.boolean :candidate, default: false, null: false
      t.integer :priority

      t.timestamps
    end
  end
end

class CreateExtinctions < ActiveRecord::Migration
  def change
    create_table :extinctions do |t|
      t.string :animal_name
      t.string :approx_extinction_at

      t.timestamps
    end
  end
end

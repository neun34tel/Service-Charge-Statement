class CreateHousingUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :housing_units do |t|
      t.decimal :residential_area
      t.decimal :usable_area
      t.decimal :total_area_share
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end

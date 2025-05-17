class CreateBuildings < ActiveRecord::Migration[8.0]
  def change
    create_table :buildings do |t|
      t.decimal :total_residential_area
      t.decimal :total_usable_area
      t.decimal :plot_area

      t.timestamps
    end
  end
end

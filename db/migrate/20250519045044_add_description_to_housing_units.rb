class AddDescriptionToHousingUnits < ActiveRecord::Migration[8.0]
  def change
    add_column :housing_units, :description, :text
  end
end

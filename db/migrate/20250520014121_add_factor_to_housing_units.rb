class AddFactorToHousingUnits < ActiveRecord::Migration[8.0]
  def change
    add_column :housing_units, :factor, :decimal
  end
end

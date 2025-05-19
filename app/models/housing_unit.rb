class HousingUnit < ApplicationRecord
  belongs_to :building

  # Validierungen hinzufügen
  validates :residential_area, :usable_area, :total_area_share,
            numericality: { greater_than_or_equal_to: 0 }

  validates :description, length: { maximum: 500 }, allow_blank: true
end

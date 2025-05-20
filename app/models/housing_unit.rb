class HousingUnit < ApplicationRecord
  belongs_to :building

  before_validation :set_factor

  # Validierungen hinzufügen
  validates :residential_area, :usable_area, :total_area_share,
            numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 500 }, allow_blank: false

  def set_factor
    self.factor = (residential_area / building.total_residential_area).round(3)
  end
end

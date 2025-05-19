class Building < ApplicationRecord
  has_many :housing_units, dependent: :destroy

  validates :name,
            presence: true,
            length: { minimum: 3, maximum: 100 }

  validates :street, :house_number, :zip_code, :city, :country,
            presence: true

  validates :zip_code,
            format: { with: /\A\d{5}\z/, message: "muss 5-stellig sein" },
            if: -> { country == 'Germany' }
end

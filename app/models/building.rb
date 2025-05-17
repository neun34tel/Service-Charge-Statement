class Building < ApplicationRecord
  has_many :housing_units, dependent: :destroy
end

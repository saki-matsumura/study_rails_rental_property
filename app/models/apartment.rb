class Apartment < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations

  validates :apartment_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :building_age, presence: true
  validates :remark, presence: true
end

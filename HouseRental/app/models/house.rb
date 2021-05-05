class House < ApplicationRecord
  has_many :stations
  validates :house_name, presence: true
  validates :fee, presence: true
  validates :address, presence: true
  validates :built_year, presence: true
  validates :note, presence: true
  accepts_nested_attributes_for :stations, allow_destroy: true
end

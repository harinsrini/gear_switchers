class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
end

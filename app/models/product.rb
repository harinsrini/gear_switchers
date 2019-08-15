class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
end

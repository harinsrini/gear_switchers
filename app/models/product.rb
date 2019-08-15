class Product < ApplicationRecord

  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
end

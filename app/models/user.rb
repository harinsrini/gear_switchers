class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :products, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
end

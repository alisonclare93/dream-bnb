class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  validates :name, :description, :price, :duration, :user_id, presence: true
end

class Dream < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :description, :price, :duration, :user_id, presence: true
end

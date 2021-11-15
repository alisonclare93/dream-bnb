class User < ApplicationRecord
  has_many :bookings
  has_many :dreams
  validates :first_name, :last_name, :email, :password, presence: true
end

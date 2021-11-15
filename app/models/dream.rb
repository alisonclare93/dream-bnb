class Dream < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, :duration, :user_id, presence: true
end

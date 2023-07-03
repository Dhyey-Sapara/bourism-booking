class Package < ApplicationRecord
  has_many :bookings
  has_many :tips
  has_many :travellers, through: :bookings
  has_many :users, through: :bookings
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :hotels
  has_many :reviews, as: :feedbackable
  belongs_to :state
end

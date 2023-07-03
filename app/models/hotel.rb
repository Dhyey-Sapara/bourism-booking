class Hotel < ApplicationRecord
  has_and_belongs_to_many :packages
  has_and_belongs_to_many :bookings
  belongs_to :city
end

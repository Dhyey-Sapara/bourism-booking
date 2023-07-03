class Booking < ApplicationRecord
  has_many :traveller
  has_and_belongs_to_many :hotels
  belongs_to :package
  belongs_to :user
  belongs_to :car
  belongs_to :guide
end

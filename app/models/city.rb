class City < ApplicationRecord
  has_and_belongs_to_many :packages
  has_many :locations
  has_many :activities
  belongs_to :state
end

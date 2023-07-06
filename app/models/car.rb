class Car < ApplicationRecord
  has_one :booking
  has_one :driver
end

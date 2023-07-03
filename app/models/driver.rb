class Driver < ApplicationRecord
  has_one :basic_detail, as: :detailable
  belongs_to :car
end

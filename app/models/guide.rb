class Guide < ApplicationRecord
  has_one :booking
  has_one :basic_detail, as: :detailable
end

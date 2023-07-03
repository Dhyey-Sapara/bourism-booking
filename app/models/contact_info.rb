class ContactInfo < ApplicationRecord
  has_one :social, as: :linkable
end

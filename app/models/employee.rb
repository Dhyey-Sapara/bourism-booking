class Employee < ApplicationRecord
  has_one :social, as: :linkable
  belongs_to :about
end

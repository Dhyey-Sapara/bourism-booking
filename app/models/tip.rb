class Tip < ApplicationRecord
  belongs_to :admin
  belongs_to :package
end

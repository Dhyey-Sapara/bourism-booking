class BasicBackground < ApplicationRecord
  belongs_to :detailable, polymorphic: true
end

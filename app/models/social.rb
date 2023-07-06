class Social < ApplicationRecord
  belongs_to :linkable, polymorphic: true
end

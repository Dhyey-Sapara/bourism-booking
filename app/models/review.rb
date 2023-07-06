class Review < ApplicationRecord
  belongs_to :user
  belongs_to :feedbackable, polymorphic: true
end

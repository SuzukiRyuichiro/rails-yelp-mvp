class Review < ApplicationRecord
  validates :rating, presence: true
  validates :content, presence: true
end

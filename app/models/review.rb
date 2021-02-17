class Review < ApplicationRecord

  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }
  validates :restaurant_id, presence: true
end

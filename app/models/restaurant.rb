class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: {in: CATEGORY}
end


# test = Restaurant.new(name: 'test', address: 'mefguro', phone_number: '0498320', category: 'Chinese')

class Restaurant < ApplicationRecord
  CATEGORY = ['Japanese', 'Thai', 'Italian', 'Spanish', 'Korean', 'American', 'Chinese', 'Mexican', 'Indian', 'Fusion', 'Other']

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: {in: CATEGORY}
end


# test = Restaurant.new(name: 'test', address: 'mefguro', phone_number: '0498320', category: 'Chinese')

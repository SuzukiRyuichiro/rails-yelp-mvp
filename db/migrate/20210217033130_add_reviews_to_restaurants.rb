class AddReviewsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurants, :review, foreign_key: true
  end
end

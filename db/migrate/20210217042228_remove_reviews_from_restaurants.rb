class RemoveReviewsFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :review_id, :integer
  end
end

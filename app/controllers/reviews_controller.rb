class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    new_review = Review.new(review_params)
    new_review.restaurant_id = params[:restaurant_id]
    new_review.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

{"authenticity_token"=>"GTDfs53CAQ9xEC9DX6gRv+x0uzx9Jp83QZebKXdNowL4KhXmJc+mM9V6NnkZ4IWlURL0xuXyhy9LkH2unLWy6g==",
 "review"=>{"content"=>"redrew", "rating"=>"3"},
 "commit"=>"Create Review",
 "restaurant_id"=>"6"}

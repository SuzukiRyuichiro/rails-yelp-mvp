Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  get 'restaurants', to: 'restaurants#index', as: :restaurants

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"

  get 'restaurants/:id/reviews/new', to: 'reviews'
end

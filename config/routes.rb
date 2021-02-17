Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix

  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
  resources :restaurants
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

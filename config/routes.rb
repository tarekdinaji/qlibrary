Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :book_adjectives
end

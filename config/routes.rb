Rails.application.routes.draw do

  devise_for :users
  root "home#index"
  resources :book_adjectives, only: [:index]
  resources :categories, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :sub_categories
  resources :genres
end

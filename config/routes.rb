Rails.application.routes.draw do

  devise_for :users
  root "books#index"
  resources :book_adjectives, only: [:index]
  resources :categories, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :sub_categories
  resources :genres
  resources :books
  get "genres/index", to: "genres#index"
end

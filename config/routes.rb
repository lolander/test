Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :index]

  resources :vehicles
  resources :cranes
  resources :events

  root 'home#index'
end

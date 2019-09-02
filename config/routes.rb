Rails.application.routes.draw do
  resources :matches
  resources :tables
  resources :companies
  resources :operations
  resources :clients
  resources :cards
  resources :users
  
  post 'login', to: 'authentication#authenticate'
end

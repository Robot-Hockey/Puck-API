Rails.application.routes.draw do
  resources :matches
  resources :tables
  resources :companies
  resources :transactions
  resources :clients
  resources :cards
  resources :users
  
  post 'authenticate', to: 'authentication#authenticate'
end

Rails.application.routes.draw do
  resources :transactions
  resources :clients
  resources :cards
  resources :users
  
  post 'authenticate', to: 'authentication#authenticate'
end

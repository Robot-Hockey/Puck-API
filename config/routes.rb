Rails.application.routes.draw do
  resources :transactions
  resources :clients
  resources :cards
  resources :users
  
  post 'login', to: 'authentication#authenticate'
end

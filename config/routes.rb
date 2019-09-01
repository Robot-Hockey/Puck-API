Rails.application.routes.draw do
  resources :transactions
  resources :clients
  resources :cards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
end

Rails.application.routes.draw do
  resources :matches
  resources :tables
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
end

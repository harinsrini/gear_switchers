Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index]
end

Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index]
  root to: 'pages#home'

  resources :products, only: [:show, :index] do
    resources :bookings, only: [:create]
  end

  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

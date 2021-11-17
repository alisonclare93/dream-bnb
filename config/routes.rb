Rails.application.routes.draw do
  get 'pages/home'
  get 'account', to: 'user#show'
  devise_for :users
  root to: 'pages#home'
  resources :dreams do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

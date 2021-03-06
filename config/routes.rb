Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show do
    resources :bookings, only: :index
  end
  root to: 'pages#home'
  get 'account', to: 'user#show'
  resources :dreams do
    resources :bookings, only: [:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  resources :videos, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end

Rails.application.routes.draw do
  devise_for :users
  resources :homes, only: [:index]
  resources :posts
  root 'homes#index'
end
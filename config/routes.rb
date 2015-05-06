Rails.application.routes.draw do
  devise_for :users
  resources :homes, only: [:index]
  root 'homes#index'
end
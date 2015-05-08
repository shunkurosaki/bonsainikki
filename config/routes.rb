Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :homes, only: [:index]
  resources :posts, except: [:index]
  resources :comments, except: [:index, :show]
  resources :users, only: [:show]
  root 'homes#index'
end
Rails.application.routes.draw do
  resources :homes, only: [:index]
  root 'homes#index'
end
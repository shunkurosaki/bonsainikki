Rails.application.routes.draw do
  get 'users/show'
  get 'sitemap', to: redirect('http://s3-ap-northeast-1.amazonaws.com/bonsainikki.pro/sitemaps/sitemap.xml.gz')

  devise_for :users
  resources :homes, only: [:index]
  resources :posts, except: [:index]
  resources :comments, except: [:index, :show]
  resources :users, only: [:show]
  root 'homes#index'
end
Rails.application.routes.draw do
  resources :users, param: :_username
  post '/auth/login', to: 'users#login'
  # get '/*a', to: 'application#not_found'

  resources :shops
  resources :images
  resources :categories
  resources :products

  get 'product-images/:id', to: 'images#show_product'
end

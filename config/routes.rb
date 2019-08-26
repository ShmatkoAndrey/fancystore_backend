Rails.application.routes.draw do
  resources :shops
  resources :images
  resources :categories
  resources :products

  get 'product-images/:id', to: 'images#show_product'
end

Rails.application.routes.draw do
  root 'products#index'

  resources :order_products
  resources :orders
  resources :product_quantities
  resources :warehouses
  resources :products
end

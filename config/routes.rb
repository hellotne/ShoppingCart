Rails.application.routes.draw do
  root "shopper#index", as: 'root'
  get 'admin', to: 'admin#index'
  get 'login', to: 'access#new'

  #get 'access/new'
  post 'login', to: 'access#create'
  delete 'access/destroy', to: 'access#destroy', as: 'logout'

  resources :users
  resources :orders
  resources :lineitems
  resources :carts

  get 'shopper/index'
  resources :products

  get 'shopper', to: 'shopper#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get 'carts/index'
  # get 'carts/show'
  # get 'stores/index'
  resources :products
  get 'carts', to: 'carts#index'
  get 'stores', to: 'stores#index'
  get 'stores/add_to_cart/:id', to: 'stores#add_to_cart', as: :add_to_cart
  get 'admins', to: 'admins#list',as: :list_admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

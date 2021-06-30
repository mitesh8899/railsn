Rails.application.routes.draw do
  resources :products
  get 'admins', to: 'admins#list',as: :list_admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

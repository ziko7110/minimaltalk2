Rails.application.routes.draw do
root "items#index"
resources :items do
  resources :comments , only: :create
end
# get 'items/new', to: 'items#new'
# post 'items/create', to: 'items#create'
end

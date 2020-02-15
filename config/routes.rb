Rails.application.routes.draw do
root "items#index"
get 'item/about',to: 'items#about'
resources :items do
  resources :comments , only: [:create]
end
resources :comments, only: [:destroy]
# get 'items/new', to: 'items#new'
# post 'items/create', to: 'items#create'
end

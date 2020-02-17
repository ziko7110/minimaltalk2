Rails.application.routes.draw do
  devise_for :users
root "items#index"
get 'item/about',to: 'items#about'
devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
resources :items do
  resources :comments , only: [:create]
end
resources :comments, only: [:destroy]

end

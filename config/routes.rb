Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :social_media, only: :index

  resources :post, only: :create

  get 'auth/facebook/callback' => 'facebook#create'
  get 'auth/twitter/callback' => 'twitter#create'
  get 'auth/linkedin/callback' => 'linkedin#create'
end

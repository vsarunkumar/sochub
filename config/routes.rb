Rails.application.routes.draw do
  devise_for :users
	root 'home#index'

	resources :social_media, only: :index
end

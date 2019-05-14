 Rails.application.routes.draw do
	devise_for :users
  resources :users,only: [:show,:edit,:update,:index] do
  	resources :relationships, only: [:create, :destroy]
  end
  resources :books do
  	resources :comments, only: [:create, :update, :destroy, :edit]
  	resources :favorites, only: [:create, :destroy]

  end

  root 'home#top'
  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :users, only:[:new, :create]
  resources :articles

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  root 'home#home'

  get 'signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

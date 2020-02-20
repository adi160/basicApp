Rails.application.routes.draw do

  resources :users, only:[:new, :create]
  resources :articles

  get 'signin', to: 'home#new'

  post 'signin', to: 'home#create'
  get 'welcome', to: 'articles#new'

  root 'home#home'

  get 'signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

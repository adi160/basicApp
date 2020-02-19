Rails.application.routes.draw do

  resources :users, only:[:new, :create]

  get 'signin', to: 'home#new'

  post 'signin', to: 'home#create'
  get 'welcome', to: 'home#welcome'

  root 'home#home'

  get 'signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

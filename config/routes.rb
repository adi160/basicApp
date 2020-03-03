Rails.application.routes.draw do

  resources :users
  resources :articles do
    resources :comments
  end

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  root 'home#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

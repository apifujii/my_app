Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'home#home'
  get '/about', to: 'home#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to:  'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
end

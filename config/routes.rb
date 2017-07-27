Rails.application.routes.draw do
  resources :users
  resources :attractions

  root 'welcome#index'

  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/ride', to: 'rides#create'
end

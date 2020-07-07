Rails.application.routes.draw do
  resources :comments
  resources :reviews
  resources :restaurants
  resources :users

  get '/sessions/new', to: 'sessions#login', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions/logout', to: 'sessions#logout', as: 'sessions_logout'

end

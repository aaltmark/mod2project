Rails.application.routes.draw do
  resources :comments
  resources :reviews
  resources :restaurants
  resources :users

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout', as: 'logout'

end

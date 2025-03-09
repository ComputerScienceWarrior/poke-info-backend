Rails.application.routes.draw do
  get '/users', to: 'users#index'
  get '/user/:id', to: 'users#show'
  get '/pokemon', to: 'pokemon#index'
  get '/pokemon/:id', to: 'pokemon#show'

  post '/pokemon', to: 'pokemon#create'
  post '/users/signup', to: 'users#create'
end

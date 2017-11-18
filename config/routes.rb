Rails.application.routes.draw do
  resources :users

  get '/', to: 'users#index'
  get '/new', to: 'users#new'
  post '/create', to: 'users#show'
  post '/users/new', to: 'users#show'
  get '/show', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

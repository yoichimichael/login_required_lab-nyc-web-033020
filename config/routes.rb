Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'secrets/new'

  # directs user to hello method in ApplicationController form home page
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'

end

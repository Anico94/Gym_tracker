Rails.application.routes.draw do
  root :to => 'pages#home'
  #session routes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  resources :workouts
  resources :exercises

end

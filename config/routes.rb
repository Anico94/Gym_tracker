Rails.application.routes.draw do
  root :to => 'pages#home'
  #session routes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  resources :exercises, :except => [:new, :create]
  resources :workouts do
    resources :exercises, :only => [:new, :create]
  end 

end

Rails.application.routes.draw do
  root :to => 'session#new'
  #session routes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  resources :exercises, :except => [:new, :create, :index, :show]
  resources :workouts do
    resources :exercises, :only => [:new, :create]
  end 

end

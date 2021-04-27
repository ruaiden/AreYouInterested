Rails.application.routes.draw do

  resources :users
  resources :posts

  get '/auth/facebook/callback' => 'sessions#create' 


end

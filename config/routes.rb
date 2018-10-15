Rails.application.routes.draw do

  get '/login' => 'session#new'  #sign in
  post '/login' => 'session#create'  #route to which sign in form is posted
  delete '/login' => 'session#destroy' #path users use to log out.


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root :to=>"users#destroy"

  resources :users

  resources :conflicts

  get '/conflicts/:id/follow'=>'conflicts#follow', as: 'conflict_follow'

  resources :continents
end

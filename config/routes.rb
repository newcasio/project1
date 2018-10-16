Rails.application.routes.draw do


  get '/login' => 'session#new'  #sign in
  post '/login' => 'session#create'  #route to which sign in form is posted
  delete '/login' => 'session#destroy' #path users use to log out.


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to=>"static_pages#home"


  resources :users

  resources :conflicts

  get '/conflicts/:id/follow'=>'conflicts#follow', as: 'conflict_follow'  #route for user to follow individual conflict

  resources :comments


  # get 'conflicts/:id/comments/new' => 'comments#new'
  # post 'conflicts/:id/comments/create' => 'comments#create'
  # get 'conflicts/:id/comments/index' => 'comments#index'
  # get 'conflicts/:id/comments/show' => 'comments#show'
  # get 'conflicts/:id/comments/edit' => 'comments#edit'
  # patch 'conflicts/:id/comments/update' => 'comments#update'
  # delete 'conflicts/:id/comments/delete' => 'comments#destroy'

  resources :continents



end

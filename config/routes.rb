Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'continents/index'
  get 'continents/show'
  get 'continents/edit'
  get 'continents/update'
  get 'conflicts/new'
  get 'conflicts/create'
  get 'conflicts/index'
  get 'conflicts/show'
  get 'conflicts/edit'
  get 'conflicts/update'
  get 'conflicts/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :conflicts

  resources :continents
end

Rails.application.routes.draw do
  # root_path 
  root 'movies#index'

  # CRUD routes for Movie
  resources :movies, only: [:index, :new, :create]
end

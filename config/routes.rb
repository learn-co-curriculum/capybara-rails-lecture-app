Rails.application.routes.draw do
  # root path 
  root to: 'application#index'

  resources :movies
end

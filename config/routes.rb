Rails.application.routes.draw do
  get 'map/index'

  root 'map#index'

  resources :polygon, only: [:index, :create]
end

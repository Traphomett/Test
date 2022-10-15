Rails.application.routes.draw do
  resources :vehicles, path: :vehiculo
  resources :dealerships, path: :concesionarias 

  namespace :authentication, path: '', as:'' do
    resources :users, only: [:new, :create]
    resources :sessions, only:[:new, :create]
  end
end

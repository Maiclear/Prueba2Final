Rails.application.routes.draw do
  resources :tasks

  devise_for :users

  resources :proyects



  root 'proyects#index'

end

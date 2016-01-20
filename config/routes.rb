Rails.application.routes.draw do


  resources :tasks

  devise_for :users

  resources :tasks, only: :index

  resources :proyects do
    resources :tasks
  end



  root 'pages#index'

end

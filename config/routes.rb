Rails.application.routes.draw do
  devise_for :users
  resources :todo_lists do
     resources :todo_items do
      member do
       patch :complete
      end
    end
  end
  get '/mytodos', to: 'todo_lists#mytodos'
  root "todo_lists#index"
  end
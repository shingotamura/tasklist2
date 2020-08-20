Rails.application.routes.draw do

  get 'toppages/index'
  root to: 'toppages#index'
  
  root to: 'tasks#index'
  resources :tasks
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end

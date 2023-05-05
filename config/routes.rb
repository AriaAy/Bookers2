Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  
  resources :books, only: [:new, :create, :index, :show, :update, :destroy]
  resources :users, only: [:create, :index, :show, :edit, :update]
  
  get 'homes/about', to: 'homes#about', as: 'about'
end

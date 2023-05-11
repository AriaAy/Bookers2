Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :books
  resources :users, only: [:create, :index, :show, :edit, :update]

  get '/home/about' => 'homes#about', as:'about'
end

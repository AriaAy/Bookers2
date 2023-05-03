Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top", as: 'top'
  
  get 'homes/about', to: 'homes#about', as: 'about'
end

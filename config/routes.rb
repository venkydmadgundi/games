Rails.application.routes.draw do
  resources :games
  resources :violences
  resources :genres
  resources :themes
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  root 'home#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

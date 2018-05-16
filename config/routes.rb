Rails.application.routes.draw do

  root 'events#index'
  get    '/login',   to: 'sessions#new'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create]
  resources :events, only: [:new, :create, :show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

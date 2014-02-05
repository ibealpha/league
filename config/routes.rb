League::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :players
  resources :user_teams
  resources :user_players

  root to: 'static_pages#home'

  match '/signup', to: 'users#new',	via: 'get'
  match '/signin', to: 'sessions#new',	via: 'get'
  match '/signout', to: 'sessions#destroy',	via: 'delete'

  #get "static_pages/home"

end

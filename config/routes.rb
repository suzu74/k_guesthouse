Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'basic_pages#home'
  get '/home',  to: 'basic_pages#home'
  get '/about', to: 'basic_pages#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :guesthouses,          only: [:create, :destroy]
end

Rails.application.routes.draw do
  root to: 'basic_pages#home'
  get '/home',  to: 'basic_pages#home'
  get '/about', to: 'basic_pages#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
end

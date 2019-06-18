Rails.application.routes.draw do
  get 'users/new'
  root to: 'basic_pages#home'
  get '/home',  to: 'basic_pages#home'
  get '/about', to: 'basic_pages#about'
  get '/signup', to: 'users#new'
end

Rails.application.routes.draw do
  get '/', to: 'basic_pages#home'
  get 'basic_pages/home'
  get '/about', to: 'basic_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

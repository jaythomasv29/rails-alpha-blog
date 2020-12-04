Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/about', to: 'pages#about'
  resources :articles, only: [:show, :index, :create, :new] # only: limits the routes in our app
end

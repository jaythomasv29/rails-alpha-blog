Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"
  get "/about", to: "pages#about"
  get "/home", to: "pages#home"
  get "/signup", to: "users#new"
  resources :users, except: [:new]
  resources :articles #, only: [:show, :index, :create, :new, :edit, :update, :destroy] # only: limits the routes in our app that are exposed
end

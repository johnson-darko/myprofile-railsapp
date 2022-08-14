Rails.application.routes.draw do
  resources :blogs
  resources :posts
  resources :projects
  resources :teams
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :tasks
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  #root 'friends#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

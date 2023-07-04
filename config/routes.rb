Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'pages/home'
  get 'pages/users'
  get 'pages/admin'
  resources :apartments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "apartments#index"
end

Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # root 'pages#home'
  get 'pages/users'
  get 'pages/admin'
  resources :apartments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "apartments#index"
end

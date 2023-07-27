Rails.application.routes.draw do
  namespace :admins do
    resources :apartments, controller: '/admins/apartments'
  end

  devise_scope :admin do
    get '/admins', to: 'devise/registrations#new'
    get '/admins/password', to: 'devise/passwords#new'
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :admins

  resources :apartments, only: %i[index show], controller: 'apartments' do
    resources :contacts
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "apartments#index"
end

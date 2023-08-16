Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registration: 'users/registrations'
  }
  get 'dashboard', to: 'dashboard#index'
  get 'appearance', to: 'dashboard#appearance'
  root 'dashboard#index'

  get ':id', to: 'dashboard#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

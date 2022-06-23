Rails.application.routes.draw do
  root to: 'tweets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tweets,only: :index
  # Defines the root path route ("/")
  # root "articles#index"
end

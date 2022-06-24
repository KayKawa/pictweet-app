Rails.application.routes.draw do
  root to: 'tweets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tweets,only: [:index,:new,:create,:destroy,:edit,:update]
  # Defines the root path route ("/")
  # root "articles#index"
end

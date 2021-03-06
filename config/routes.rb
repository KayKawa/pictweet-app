Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root to: 'tweets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :comments,only: :create
    collection do
      get 'search'
    end
  end
  resources :users ,only: :show
  # Defines the root path route ("/")
  # root "articles#index"
end

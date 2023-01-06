Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  # Defines the root path route ("/")
  root "posts#index"
end
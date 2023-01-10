Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/destroy'
  resources :friend_requests
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  # Defines the root path route ("/")
  root "posts#index"
end

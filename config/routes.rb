Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
      # resources :posts, only: [:index, :create]
      resources :posts
      resources :conversations, only: [:index, :create]
      resources :messages, only: [:create]
      resources :comments, only: [:create]
      resources :users, only: [:index, :create]
      post '/login', to: "sessions#create"
      delete '/logout', to: 'sessions#destroy'
  	end
  end

end

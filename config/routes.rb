Rails.application.routes.draw do

  resources :users
  resources :tweets, only: [:new, :create, :edit, :update ,:destroy] do
    collection do
      post :confirm
    end
  end

  root 'tweets#index'

  resources :user_sessions
  resources :users
  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end

Rails.application.routes.draw do
  get 'transactions/index'
  # Health check route
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # Devise routes with custom controllers
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # Sign out route
  devise_scope :user do
    delete '/users/sign_out', to: 'devise/sessions#destroy', as: :logout_user
   end

  # Categories routes
  resources :categories, only: [:index, :new, :create] do
  # Transactions routes
  resources :transactions, only: [:index, :new, :create]
  end
  
  # Root route
  root 'splash#index'
end

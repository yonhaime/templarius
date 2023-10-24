Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[index edit update] do
    member do
      get 'edit_roles'
      put 'update_roles'
    end
  end

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # Reveal health status on /up that returns 200
  get 'up' => 'rails/health#show', as: :rails_health_check
  mount Lookbook::Engine, at: '/lookbook' if Rails.env.development?
end

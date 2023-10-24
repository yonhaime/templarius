Rails.application.routes.draw do
  devise_for :users
  # Reveal health status on /up that returns 200
  get 'up' => 'rails/health#show', as: :rails_health_check
  mount Lookbook::Engine, at: '/lookbook' if Rails.env.development?
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end

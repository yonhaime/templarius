Rails.application.routes.draw do
  # Reveal health status on /up that returns 200
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
end

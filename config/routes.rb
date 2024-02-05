Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get "up" => "rails/health#show", as: :rails_health_check

  resources :genres, only: :index do
    resources :movies, only: :index do
      resources :characters, only: %i[new create]
    end
  end
  get "/characters", to: "characters#index"
  get "/characters/:id", to: "characters#show"
  root to: "characters#index"
end

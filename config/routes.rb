Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get "up" => "rails/health#show", as: :rails_health_check

  resources :genres, only: :index do
    resources :movies do
      resources :characters, only: %i[create]
    end
  end
  get "/movies", to: "movies#index"
  get "/characters", to: "characters#index"
  get "/characters/:id", to: "characters#show"
  root to: "characters#index"
  delete "/characters/:id", to: "characters#destroy"
end

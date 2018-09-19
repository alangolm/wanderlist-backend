Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :destinations
      resources :events
      resources :flights
    end
  end
end

Rails.application.routes.draw do
  apipie
  namespace :api do
    namespace :v1 do
      resources :deliveries, only: [:create]
    end
  end
end

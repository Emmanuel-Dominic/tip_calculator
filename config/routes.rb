Rails.application.routes.draw do
  root "application#index"

  get "/calculator", to: "tip_calculation#new", as: :calculator_new
  get "/calculations", to: "tip_calculation#index", as: :calculator_index
  post "/calculations", to: "tip_calculation#create", as: :calculator_create
  get "/calculations/:id", to: "tip_calculation#show", as: :calculator_show
  put "/calculations/:id", to: "tip_calculation#update", as: :calculator_update
  delete "/calculations/:id", to: "tip_calculation#delete", as: :calculator_delete

  match '*unmatched', to: 'application#route_not_found', via: :all

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end

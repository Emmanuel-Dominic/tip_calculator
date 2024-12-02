Rails.application.routes.draw do
  root "application#index"
  match '*unmatched', to: 'application#route_not_found', via: :all

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end

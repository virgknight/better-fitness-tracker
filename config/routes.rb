Rails.application.routes.draw do
  root to: "static_pages#root" 

  namespace :api, defaults: {format: :json} do
    resources :body_parts, only: [:show, :index]
  end
end

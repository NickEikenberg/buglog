Rails.application.routes.draw do
  resources :projects
  resources :bugs
  root to: "bugs#index"
end

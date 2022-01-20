Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :bugs
  root to: "bugs#index"
end

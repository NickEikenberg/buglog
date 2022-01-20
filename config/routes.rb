Rails.application.routes.draw do
  devise_for :users
  # get "users/show"
  # get "users/show/:id", to: "users#show"
  # get "users/index"
  resources :users, only: [:index, :show]
  resources :projects
  resources :bugs
  root to: "bugs#index"
end

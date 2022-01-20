Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :users, only: [:index, :show]
  resources :projects
  resources :bugs
end

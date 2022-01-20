Rails.application.routes.draw do

  root "home#index"
  devise_for :users
  resources :users, only: [:index, :show]
  resources :projects
  resources :bugs

  devise_scope :user do
    delete 'logout', to: 'home#index'
  end
end

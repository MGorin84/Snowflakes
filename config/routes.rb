Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root to: 'welcome#index'

  resources :artworks
  resources :dashboard, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root to: 'welcome#index'

  resources :artworks do
    resources :comments
  end
  resources :dashboard, only: [:index]
  resources :purchase_items
  resources :conversations do
    resources :messages
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

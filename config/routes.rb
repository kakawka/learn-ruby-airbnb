Rails.application.routes.draw do
  resources :reviews, only: [:create]
  resources :rooms
  root to: "rooms#index"
  resources :options, only: [:create]
  resources :photos, only: [:create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

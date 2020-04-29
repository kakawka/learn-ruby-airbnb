Rails.application.routes.draw do
  resources :reviews, only: [:create, :destroy, :edit, :update]
  resources :rooms
  root to: "rooms#index"
  resources :options, only: [:create, :destroy, :edit, :update]
  resources :photos, only: [:create, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

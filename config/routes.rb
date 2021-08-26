Rails.application.routes.draw do

  resources :airports
  resources :flights
  resources :bookings
  resources :passengers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root to: "flights#index"
end

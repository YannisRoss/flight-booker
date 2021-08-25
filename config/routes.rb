Rails.application.routes.draw do

  resources :airports
  resources :flights

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root to: "airports#index"
end

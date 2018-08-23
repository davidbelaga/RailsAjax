Rails.application.routes.draw do

  resources :gossips, only: [:index, :create, :new]
  root to: "gossips#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

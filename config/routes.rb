Rails.application.routes.draw do
  resources :xes
  resources :maps, only: [:index]
  resources :users, only: [:index, :create]
  post "login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

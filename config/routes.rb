Rails.application.routes.draw do
  resources :user_graphs, only: [:index, :create, :destroy]
  resources :ys
  resources :xes
  resources :maps, only: [:index]
  resources :users, only: [:index, :create]
  post "login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

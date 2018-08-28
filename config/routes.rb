Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "timeline#index", as: :timeline
  get "/timeline" => "timeline#index"

  get "/users" => "users#index", as: :users
  get "/users/:id" => "users#show", as: :user
  get "/follow/:id" => "users#follow", as: :follow_user

  resources :messages

end

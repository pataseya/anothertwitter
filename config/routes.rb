Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/timeline" => "timeline#index"
  get "/users" => "users#index"
end

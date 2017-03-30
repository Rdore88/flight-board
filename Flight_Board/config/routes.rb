Rails.application.routes.draw do
  resources :flight_routes do
    resources :flights
  end
  get "/users/new", controller: "users", action: "new"

  post "/users", controller: "users", action: "create"

  root controller: "flight_routes", action: "index"

end

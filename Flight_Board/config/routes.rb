Rails.application.routes.draw do
  resources :flight_routes do
    resources :flights
  end
  get "users/new", controller: "users", action: "new"

  root controller: "flight_routes", action: "index"

end

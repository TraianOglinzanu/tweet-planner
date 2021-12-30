Rails.application.routes.draw do

  # GET "/about"
  get "about", to: "about#index"

  # GET "/pricing"
  get "pricing", to: "pricing#index"

  # GET "/". Main root path 
  root to: "main#index"

end

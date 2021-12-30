Rails.application.routes.draw do

  # GET "/about"
  get "about", to: "about#index"

  # GET "/". Main root path 
  root to: "main#index"

end

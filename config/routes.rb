Rails.application.routes.draw do

  # GET "/about". Rename rout to make it simple throughout the application
  get "about-us", to: "about#index", as: :about

  # GET "/pricing"
  get "pricing", to: "pricing#index"

  # GET "/sign_up"
  get "sign_up", to: "registrations#new"

  # POST 
  post "sign_up", to: "registrations#create"

  # DELETE. This will allow the user to log out of the application
  delete "logout", to: "sessions#destroy"

  # GET "/". Main root path 
  root to: "main#index"

end

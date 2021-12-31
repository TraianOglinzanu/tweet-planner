class SessionsController < ApplicationController 
    def destroy
        session[:user_id] = nil # set session id to nil so main_controller cant find an id so user cannot be logged in
        redirect_to root_path, notice: "Logged out"
    end  
end 
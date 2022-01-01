class SessionsController < ApplicationController 

    def new 
    end 

    def create #find user to log them in to their account
        user = User.find_by(email: params[:email])

        if user.present? && user.authenticate(params[:password]) # must check to see if user exists and if they have a valid password
            session[:user_id] = user.id 
            redirect_to root_path, notice: "Logged in successfully"
        else 
            flash[:alert] = "Invalid email or password"
            render :new #render sessions/new.html.erb
        end
    end

    def destroy
        session[:user_id] = nil # set session id to nil so main_controller cant find an id so user cannot be logged in
        redirect_to root_path, notice: "Logged out"
    end  
end 
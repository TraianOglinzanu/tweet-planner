class RegistrationsController < ApplicationController
    def new 
        @user = User.new #create an instance variable so we can access it in views 
    end

    def create 
        #render plain: params[:user]   #references all parameters seen in logs. Take data from form to put into params

        @user = User.new(user_params) # takes hash of params and gives it to users.new
        if @user.save 
            redirect_to root_path, notice: "Successfully created account"
        else 
            #flash[:alert] = "Could not create account "
            render :new #goes to app/views/registration/new.html.erb
        end 
    end

    private 

    def user_params #only allowed attributes that can bet set. Doesn't allow anyone to access parameters
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end 

class MainController < ApplicationController 
    def index 
        if session[:user_id]
            @user = User.find_by(id: session[:user_id]) # as long as number is set and is not nil we can look user up
                                                        # find_by wont throw error if we cant find user
        end
    end 
end 
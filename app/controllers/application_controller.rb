class ApplicationController < ActionController::Base

    before_action :set_current_user #before you run any actions, set the current user if it can be found 

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end                                               
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "Must be signed in to perform action" if Current.user.nil?
    end

end

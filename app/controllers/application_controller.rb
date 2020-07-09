class ApplicationController < ActionController::Base
    before_action :authorized 

    private

    def set_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def authorized 
        flash[:message] = "You need to be logged in to do that action."
        redirect_to login_path unless set_user
        
    end 
end

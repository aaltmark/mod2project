class SessionsController < ApplicationController
    skip_before_action :set_user, only: [:login, :create]
    def login

    end

    def create
        user = User.find_by(username: params[:session][:username])

        # byebug

        if user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            
            redirect_to new_login_path
        end
    end

    def logout
        session.delete(:user_id)
    end
end

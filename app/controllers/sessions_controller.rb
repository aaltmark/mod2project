class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:login, :create]
    def login

    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Incorrect username or password"
            redirect_to login_path
        end
    end

    def logout
        session.delete(:user_id)
        redirect_to reviews_path
    end
end

class UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :new, :create]
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index 
        @users = User.all
    end

    def show
        if session[:user_id] 
            authorized 
        end
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
        
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def destroy

    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :name, :password, :location, :photo_url, :bio)
    end
end

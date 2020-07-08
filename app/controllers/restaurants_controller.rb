class RestaurantsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    before_action :find_restaurant, only: [:show, :edit, :create, :destroy]

    def index 
        @restaurants = Restaurant.all
    end

    def show
        if session[:user_id] 
            authorized 
        end
    end

    private

    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :location, :photo_url, :bio, :menu)
    end
end

class RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:show, :edit, :create, :destroy]

    def index 
        @restaurants = Restaurant.all
    end

    def show

    end

    private

    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :location, :photo_url, :bio, :menu)
    end
end

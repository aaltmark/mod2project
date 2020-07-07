class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def index 
        @reviews = Reviews.all
    end 

    def show

    end

    def new 
        @review = Review.new
        @restaurants = Restaurant.all 
    end

    def create 
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
        
    end

    def edit

    end

    def update
        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to edit_review_path
        end
    end

    def destroy
        @review.destroy
        redirect_to user_path(@review.user)
    end

    private

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :content)
    end
end

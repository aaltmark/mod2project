class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create 
        @comment = Comment.create(comment_params)
        redirect_to review_path(@review)
    end 

    def edit 
    end 

    def update 
    end 
    
end

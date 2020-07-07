class CommentsController < ApplicationController
    def new
        # @review = Review.find(params[:review_id])
        @comment = Comment.new(review_id: params[:review_id])
        @review = @comment.review
    end

    def create 
        @comment = Comment.create(comment_params)
        redirect_to review_path(@comment.review)
    end 

    def destroy
        @comment = Comment.find(params[:id])
        @review = @comment.review
        @comment.destroy 
        redirect_to review_path(@review)
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :review_id, :content)
    end
    
end

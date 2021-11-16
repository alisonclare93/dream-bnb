# class ReviewsController < ApplicationController
#   def new
#   @dream = Dream.find(params[:dream_id])
#   @review = Review.new
#   end

#   def create
#     @review = Review.new(review_params)
#     @dream = Dream.find(params[:dream_id])
#     @review.dream = @dream
#     @review.save
#     redirect_to dream_path(@dream)
#   end

#   private

#   def review_params
#     params.require(:review).permit(:content, :rating)
#   end
# end

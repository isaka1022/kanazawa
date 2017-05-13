class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.create( review_params )
    redirect_to spot_path(params[:spot_id])
  end

  def edit
    @review = Review.find(params[:id])
    review = Review.update_attributes( review_params )
    redirect_to spot_path(params[:spot_id])
  end

  private

  def review_params
    binding.pry
    params.require(:review).permit(:rate, :review).merge(spot_id: params[:spot_id], user_id: current_user.id)
  end
end

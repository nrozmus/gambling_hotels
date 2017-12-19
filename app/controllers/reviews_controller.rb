class ReviewsController < ApplicationController
  before_action :require_login

  def index
    @reviews = current_user.reviews.order(created_at: :desc)
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review
    else
      render json: { :errors => review.errors.full_messages }, :status => 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.delete
    redirect_to :back
  end

  private
    def review_params
      params.require(:review).permit(
        :length_of_stay,
        :comment,
        :room_type_id,
        :user_id
      )
    end
end

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
    room_id = review.room_type.rooms.ids.first #=> num --> w/out arr
    room_type_id = review.room_type.id
    review.delete
    redirect_to room_room_type_path(room_id, room_type_id)
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

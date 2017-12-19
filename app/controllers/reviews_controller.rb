class ReviewsController < ApplicationController
  before_action :require_login

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

class RoomsController < ApplicationController

  def index
    if @hotel = Hotel.find_by(id: params[:hotel_id])
      render json: @hotel.rooms
    else
      render json: { errors:  "Sorry, couldn't find that Hotel, please select from below" }
    end
  end
end

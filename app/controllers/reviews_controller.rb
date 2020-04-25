class ReviewsController < ApplicationController
  def create
    new_review = params.require(:room).require(:reviews).permit(
      :avatar,
      :name,
      :text,
      :room_id
    )
    review = Review.create(new_review)
    redirect_to "/rooms/#{params[:room][:reviews][:room_id]}"
  end
end

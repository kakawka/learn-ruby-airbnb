class ReviewsController < ApplicationController
  def create
    new_review = params.require(:room).require(:reviews).permit(
      :avatar,
      :name,
      :text,
      :room_id
    )
    Review.create(new_review)
    redirect_to "/rooms/#{params[:room][:reviews][:room_id]}"
  end

  def destroy
    r = Review.find(params[:id])
    r.destroy
    redirect_to room_path(r.room_id)
  end

  def edit #метод редактировать, в нем будет страница с формой ВИДИМ!
    @review = Review.find(params[:id])
  end

  def update #обновления review, которые прихдят из формы edit НЕ ВИДИМ!
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to room_path(review.room_id)
  end

  def review_params
    params.require(:review).permit(:avatar, :name, :text)
  end
end

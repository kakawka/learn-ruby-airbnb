class PhotosController < ApplicationController
  def create
    new_photo = params.require(:photo).permit(:photo, :room_id)
    Photo.create(new_photo)
    redirect_to room_path(params[:photo][:room_id])
  end
end

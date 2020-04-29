class PhotosController < ApplicationController
  def create
    new_photo = params.require(:photo).permit(:photo, :room_id)
    Photo.create(new_photo)
    redirect_to room_path(params[:photo][:room_id])
  end
  def destroy
    k = Photo.find(params[:id])
    k.destroy
    redirect_to room_path(k.room_id)
  end
end

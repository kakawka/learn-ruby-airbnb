class PhotosController < ApplicationController
  def create
    new_photo = params.require(:photo).permit(:photo, :room_id)
    a = Photo.create(new_photo)
    redirect_to "/rooms/#{params[:photo][:room_id]}"
  end
end

class OptionsController < ApplicationController
  def create
    new_options = params.require(:room).require(:options).permit(
      :name,
      :text,
      :room_id
    )
    Option.create(new_options)
    redirect_to room_path(params[:room][:options][:room_id])
  end
end

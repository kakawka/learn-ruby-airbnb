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
  def destroy
    o = Option.find(params[:id])
    o.destroy
    redirect_to room_path(o.room_id)
  end

  def edit
    @option = Option.find(params[:id])
  end

  def update
    option = Option.find(params[:id])
    option.update(option_params)
    redirect_to room_path(option.room_id)
  end
  def option_params
    params.require(:option).permit(:name, :text)
  end
end

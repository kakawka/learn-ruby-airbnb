class RemoveColumImageUrl < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :image_url
  end
end

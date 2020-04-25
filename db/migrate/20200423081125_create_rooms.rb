class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.float :rating  # число со значениями после точки
      t.string :image_url
      t.string :owner_name
      t.text :description
      t.integer :price  # число без точки

      t.timestamps  #создаст поля created_at и updated_at
    end
  end
end

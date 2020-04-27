class PhotoRoom < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |p|
      p.string :photo
      p.references :room, null: false, foreign_key: true

      p.timestamps
    end
  end
end

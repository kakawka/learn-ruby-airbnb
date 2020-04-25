class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :avatar
      t.string :name
      t.text :text
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end

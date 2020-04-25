class Room < ApplicationRecord
  validates :title, :image_url, :description, :price, presence: true
  validates :title, :description, length: {minimum: 5, to_short: 'добавь символы в описании'}
  validates :rating, numericality: {less_than_or_equal_to: 5, greater_than: 0}

  has_many :reviews
  has_many :options 
end

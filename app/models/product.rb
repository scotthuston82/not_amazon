class Product < ApplicationRecord

  validates :name, :description, :price, :img_url, presence: true

  validates :price, numericality: { only_integer: true }

end

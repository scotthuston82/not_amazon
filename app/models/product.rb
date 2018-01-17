class Product < ApplicationRecord

  validates :name, :description, :price, :img_url, presence: true

  validates :price, numericality: { only_integer: true }

  def price_in_dollars
    price_in_dollars = self.price.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end

end

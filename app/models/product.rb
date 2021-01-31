class Product < ApplicationRecord
  has_many :product_quantities

  monetize :price_cents

  def in_stock?
    total_quantity.positive?
  end

  def total_quantity
    product_quantities.map(&:quantity).sum
  end
end

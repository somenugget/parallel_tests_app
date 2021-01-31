class Order < ApplicationRecord
  has_many :order_products

  OutOfStockError = Class.new(StandardError)

  def add_product(product, quantity = 1)
    raise OutOfStockError.new unless product.in_stock?

    order_product = order_products.find { |op| op.product_id == product.id }

    if order_product.present?
      order_product.update(quantity: order_product.quantity + 1)
    else
      order_products.create!(product: product, quantity: quantity)
    end
  end
end

class Warehouse < ApplicationRecord
  has_many :product_quantities
end

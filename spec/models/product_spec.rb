require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'long test' do
    it 'is long' do
      1000.times do |i|
        Product.create(name: 'Product', price: 10)
      end

      expect(10).to be_positive
    end
    it 'is long' do
      1000.times do |i|
        Product.create(name: 'Product', price: 10)
      end

      expect(10).to be_positive
    end
    it 'is long' do
      1000.times do |i|
        Product.create(name: 'Product', price: 10)
      end

      expect(10).to be_positive
    end
  end

  describe 'quantity methods' do
    let(:product) { Product.create(name: 'Product', price: 10) }
    let(:warehouse) { Warehouse.create(name: '1') }

    before do
      product.product_quantities.create!(warehouse: warehouse, quantity: 2)
      product.product_quantities.create!(warehouse: warehouse, quantity: 1)
      product.product_quantities.create!(warehouse: warehouse, quantity: 0)
    end

    describe '#total_quantity' do
      it 'counts total quantity' do
        expect(product.total_quantity).to be 3
      end
    end

    describe '#in_stock?' do
      it 'is in stock' do
        expect(product).to be_in_stock
      end
    end
  end
end

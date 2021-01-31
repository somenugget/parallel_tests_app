describe Order, type: :model do
  describe 'long test' do
    it 'is long' do
      10000.times do |i|
        Order.create
      end

      expect(10).to be_positive
    end
  end

  describe '#add_product' do
    let(:product) { Product.create(name: "Product", price: 10) }
    let(:order) { Order.create }
    let(:warehouse) { Warehouse.create }

    before do
      product.product_quantities.create(warehouse: warehouse, quantity: 10)
    end

    context 'has no such product' do
      it 'adds product' do
        expect { order.add_product(product) }.
          to change { order.order_products.where(product: product).count }.
            from(0).
            to(1)
      end
    end

    context 'has such product' do
      let!(:order_product) do
        order.order_products.create!(product: product, quantity: 1)
      end

      it 'increases quantity' do
        expect { order.add_product(product) }.
          to change(order_product, :quantity).
            from(1).
            to(2)
      end
    end

    context 'product is out of stock' do
      before do
        product.product_quantities.destroy_all
      end

      it 'raises an error' do
        expect { order.add_product(product) }.to raise_error(Order::OutOfStockError)
      end
    end
  end
end

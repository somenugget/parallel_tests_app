describe OrderProduct, type: :model do
  describe 'long test' do
    it 'is long' do
      1000.times do |i|
        OrderProduct.create(
          order: Order.create!,
          product: Product.create!(price: i),
          quantity: 1
        )
      end

      expect(10).to be_positive
    end
  end
end

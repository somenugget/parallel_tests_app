describe ProductQuantity, type: :model do
  describe 'long test' do
    it 'is long' do
      1000.times do |i|
        ProductQuantity.create(
          warehouse: Warehouse.create!(name: i),
          product: Product.create!(price: i),
          quantity: 1
        )
      end

      expect(10).to be_positive
    end
    it 'is long' do
      1000.times do |i|
        ProductQuantity.create(
          warehouse: Warehouse.create!(name: i),
          product: Product.create!(price: i),
          quantity: 1
        )
      end

      expect(10).to be_positive
    end

    it 'is long' do
      1000.times do |i|
        ProductQuantity.create(
          warehouse: Warehouse.create!(name: i),
          product: Product.create!(price: i),
          quantity: 1
        )
      end

      expect(10).to be_positive
    end
  end
end

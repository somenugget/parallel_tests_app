describe Warehouse, type: :model do
  describe 'long test' do
    it 'is long' do
      1000.times do |i|
        Warehouse.create!(name: i)
      end

      expect(10).to be_positive
    end
    it 'is long' do
      1000.times do |i|
        Warehouse.create!(name: i)
      end

      expect(10).to be_positive
    end
    it 'is long' do
      1000.times do |i|
        Warehouse.create!(name: i)
      end

      expect(10).to be_positive
    end
  end
end

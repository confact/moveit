require 'rails_helper'

RSpec.describe PriceCalculate, type: :service do
  describe 'calculate distance' do
    it 'correct price without piano' do
      expect(PriceCalculate.get_price(10, 10, 10, false)).to eq(1100)
    end
    it 'correct price with piano' do
      expect(PriceCalculate.get_price(10, 10, 10, true)).to eq(6100)
    end
    it 'correct price with 50km distance' do
      expect(PriceCalculate.get_price(10, 10, 50, false)).to eq(5400)
    end
    it 'correct price with 99km distance' do
      expect(PriceCalculate.get_price(10, 10, 99, false)).to eq(5792)
    end
    it 'correct price with 100km distance' do
      expect(PriceCalculate.get_price(10, 10, 100, false)).to eq(10700)
    end
  end
  describe 'calculate area' do
    it 'correct price without piano' do
      expect(PriceCalculate.get_price(50, 10, 10, false)).to eq(2200)
    end
    it 'correct price with piano' do
      expect(PriceCalculate.get_price(50, 10, 10, true)).to eq(7200)
    end
    it 'correct price with 25m storage' do
      expect(PriceCalculate.get_price(10, 25, 10, false)).to eq(2200)
    end
    it 'correct price with 100m storage' do
      expect(PriceCalculate.get_price(10, 100, 10, false)).to eq(5500)
    end
    it 'correct price with 100m area' do
      expect(PriceCalculate.get_price(100, 10, 10, false)).to eq(3300)
    end
    it 'correct price with 150m area' do
      expect(PriceCalculate.get_price(150, 10, 10, false)).to eq(4400)
    end
  end
end

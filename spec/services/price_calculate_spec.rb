require 'rails_helper'

RSpec.describe PriceCalculate, type: :service do
  describe 'calculate distance' do
    it 'correct price without piano' do
      calculate = PriceCalculate.new(10, 10, 10, false)
      expect(calculate.get_price).to eq(1100)
    end
    it 'correct price with piano' do
      calculate = PriceCalculate.new(10, 10, 10, true)
      expect(calculate.get_price).to eq(6100)
    end
    it 'correct price with 50km distance' do
      calculate = PriceCalculate.new(10, 10, 50, false)
      expect(calculate.get_price).to eq(5400)
    end
    it 'correct price with 99km distance' do
      calculate = PriceCalculate.new(10, 10, 99, false)
      expect(calculate.get_price).to eq(5792)
    end
    it 'correct price with 100km distance' do
      calculate = PriceCalculate.new(10, 10, 100, false)
      expect(calculate.get_price).to eq(10700)
    end
  end
  describe 'calculate area' do
    it 'correct price without piano' do
      calculate = PriceCalculate.new(50, 10, 10, false)
      expect(calculate.get_price).to eq(2200)
    end
    it 'correct price with piano' do
      calculate = PriceCalculate.new(50, 10, 10, true)
      expect(calculate.get_price).to eq(7200)
    end
    it 'correct price with 25m storage' do
      calculate = PriceCalculate.new(10, 25, 10, false)
      expect(calculate.get_price).to eq(2200)
    end
    it 'correct price with 100m storage' do
      calculate = PriceCalculate.new(10, 100, 10, false)
      expect(calculate.get_price).to eq(5500)
    end
    it 'correct price with 100m area' do
      calculate = PriceCalculate.new(100, 10, 10, false)
      expect(calculate.get_price).to eq(3300)
    end
    it 'correct price with 150m area' do
      calculate = PriceCalculate.new(150, 10, 10, false)
      expect(calculate.get_price).to eq(4400)
    end
  end
end

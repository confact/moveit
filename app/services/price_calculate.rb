class PriceCalculate
  def self.get_price(area, storage, distance, piano)
    price = 0

    # distance
    price = 1000 + 10 * distance if distance < 50
    price = 5000 + 8 * distance if distance >= 50 && distance < 100
    price = 10_000 + 7 * distance if distance >= 100

    # Volym
    price += (area / 50) * 1100
    price += (storage / 25) * 1100

    price += 5000 if piano
    price
  end
end

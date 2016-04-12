class Offer < ActiveRecord::Base
  validates :email, email: true
  validates_numericality_of :distance, only_integer: true, greater_than_or_equal_to: 1
  validates_numericality_of :living_area, only_integer: true, greater_than_or_equal_to: 0
  validates_numericality_of :storage_area, only_integer: true, greater_than_or_equal_to: 0
  validates :name, presence: true, allow_blank: false
  validates :from_address, presence: true, allow_blank: false
  validates :to_address, presence: true, allow_blank: false
  before_save :calculate_price

  def calculate_price
    self.price = PriceCalculate.get_price(living_area, storage_area, distance, piano)
  end
end

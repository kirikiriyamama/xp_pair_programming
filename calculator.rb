class Calculator
  def initialize(price:, quantity:, area:)
    @price    = price
    @quantity = quantity
    @area     = area
  end

  def display
    puts @price * @quantity * 1.0685
  end
end

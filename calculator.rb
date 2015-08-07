class Calculator
  def initialize(price:, quantity:, area:)
    @price    = price
    @quantity = quantity
    @area     = area
  end

  def display
    puts @price * @quantity * tax_rate
  end

  def tax_rate
    case @area
    when '北海道'
      1.0685
    end
  end
end

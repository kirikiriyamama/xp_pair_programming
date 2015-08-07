class Calculator
  def initialize(price:, quantity:, area:)
    @price    = price
    @quantity = quantity
    @area     = area
  end

  def display
    puts @price * @quantity * tax_rate
  end

  def raw_price
    @price * @quantity
  end

  def tax_rate
    case @area
    when '北海道'
      1.0685
    when '東日本'
      1.0800
    when '西日本'
      1.0625
    when '四国'
      1.0400
    when '九州'
      1.0825
    end
  end

  def discount_rate
  end
end

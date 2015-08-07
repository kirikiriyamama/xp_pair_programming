class Calculator
  def initialize(price:, quantity:, area:)
    @price    = price
    @quantity = quantity
    @area     = area
  end

  def display
    puts raw_price * discount_rate * tax_rate
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
    case raw_price
    when 0..999
      1.00
    when 1000..4999
      1.00 - 0.03
    when 5000..6999
      1.00 - 0.05
    when 7000..9999
      1.00 - 0.07
    when 10000..49999
      1.00 - 0.10
    else
      1.00 - 0.15
    end
  end
end

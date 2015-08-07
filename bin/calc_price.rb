require_relative '../calculator'

price    = ARGV[0].to_i
quantity = ARGV[1].to_i
area     = ARGV[2]

calculator = Calculator.new(price: price, quantity: quantity, area: area)
calculator.display

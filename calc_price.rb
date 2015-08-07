class Calculator
  def initialize
    @price    = ARGV[0].to_i
    @quantity = ARGV[1].to_i
    @area     = ARGV[2]
  end

  def display
    puts @price * @quantity * 1.0685
  end
end

Calculator.new.display



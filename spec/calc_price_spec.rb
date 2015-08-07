require 'spec_helper'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new(price: price, quantity: quantity, area: area) }

  let(:price) { 100 }
  let(:quantity) { 2 }
  let(:area) { 'area' }

  it { expect{ calculator.display }.to output("213.7\n").to_stdout }
end

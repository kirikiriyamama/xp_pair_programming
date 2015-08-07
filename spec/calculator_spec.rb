require 'spec_helper'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new(price: price, quantity: quantity, area: area) }

  describe '#tax_rate' do
    let(:price) { 100 }
    let(:quantity) { 2 }

    context '北海道' do
      let(:area) { '北海道' }
      it { expect(calculator.tax_rate).to eq 1.0685 }
    end
    context '東日本' do
      let(:area) { '東日本' }
      it { expect(calculator.tax_rate).to eq 1.0800 }
    end
    context '西日本' do
      let(:area) { '西日本' }
      it { expect(calculator.tax_rate).to eq 1.0625 }
    end
    context '四国' do
      let(:area) { '四国' }
      it { expect(calculator.tax_rate).to eq 1.0400 }
    end
    context '九州' do
      let(:area) { '九州' }
      it { expect(calculator.tax_rate).to eq 1.0825 }
    end
  end

  describe '#raw_price' do
    let(:price) { 100 }
    let(:quantity) { 2 }
    let(:area) { '北海道' }

    it { expect(calculator.raw_price).to eq 200 }
  end

  describe '#discount_rate' do
    let(:price) { 1000 }
    let(:quantity) { 2 }
    let(:area) { '北海道' }

    it { expect(calculator.discount_rate).to eq 1.03 }
  end

  describe '#display' do
    let(:price) { 100 }
    let(:quantity) { 2 }
    let(:area) { '北海道' }

    it { expect{ calculator.display }.to output("213.7\n").to_stdout }
  end
end

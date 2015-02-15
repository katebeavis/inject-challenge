require 'array'

describe Array do

  let(:array){ Array.new }

  it 'can add numbers' do
      expect([1, 2, 3, 4].injection_replicate{|result, element| result + element}).to eq(10)
    end

  it 'can subtract numbers' do
      expect([1, 2, 3, 4].injection_replicate{|result, element| result - element}).to eq(-8)
    end

  it 'can mulitply numbers' do
      expect([1, 2, 3, 4].injection_replicate{|result, element| result * element}).to eq(24)
    end

  it 'can add numbers when accumulator is changed' do
    expect([1, 2, 3, 4].injection_replicate(10){|result, element| result + element}).to eq(20)
  end

end
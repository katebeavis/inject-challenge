require 'spec_helper'
require 'array'

describe Array do
  it 'can add numbers' do
    expect([1, 2, 3, 4].injection_replicate { |result, element| result + element }).to eq(10)
  end

  it 'can subtract numbers' do
    expect([1, 2, 3, 4].injection_replicate { |result, element| result - element }).to eq(-8)
  end

  it 'can mulitply numbers' do
    expect([1, 2, 3, 4].injection_replicate { |result, element| result * element }).to eq(24)
  end

  it 'can add numbers when accumulator is changed' do
    expect([1, 2, 3, 4].injection_replicate(10) { |result, element| result + element }).to eq(20)
  end

  it 'does not destroy the original block given' do
    block = [1, 2, 3, 4]
    block.injection_replicate { |result, element| result + element }
    expect(block).to eq([1, 2, 3, 4])
  end

  it 'can join words to make a string' do
    expect(['I ', 'am ', 'a ', 'maker ', 'who ', 'codes'].injection_replicate { |result, element| result << element }).to eq('I am a maker who codes')
  end
end

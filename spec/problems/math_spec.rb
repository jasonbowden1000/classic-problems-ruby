require 'spec_helper'
require 'problems/math'

describe 'Math' do
  let(:math) { Problems::Math.new }

  context "when reversing digits" do
    it 'should return a number in reverse order' do
      num = 4242
      reversed_num = 2424
      expect(math.reverse_digits(num)).to eq(reversed_num)
    end

    it 'should preserve the sign of the reversed digits' do
      num = -314
      reversed_num = -413
      expect(math.reverse_digits(num)).to eq(reversed_num)
    end

    it 'should not return octals for numbers ending with a zero' do
      num = 1230
      reversed_num = 321
      expect(math.reverse_digits(num)).to eq(reversed_num)
    end
  end
end

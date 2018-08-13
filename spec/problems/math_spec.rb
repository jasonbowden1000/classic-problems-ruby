require 'spec_helper'
require 'problems/math'

describe 'Math' do
  let(:math) { Problems::Math.new }

  context "when reversing digits" do
    it 'should return a number in reverse order' do
      expect(math.reverse_digits(4242)).to eq(2424)
    end

    it 'should preserve the sign of the reversed digits' do
      expect(math.reverse_digits(-314)).to eq(-413)
    end

    it 'should not return octals for numbers ending with a zero' do
      expect(math.reverse_digits(1230)).to eq(321)
    end
  end
end

require 'spec_helper'
require 'problems/string'

describe 'palindrome?' do
  let (:string) { Problems::String.new }

  it 'should accept a basic palindromic word' do
    expect(string.palindrome?('')).to be true
    expect(string.palindrome?('a')).to be true
    expect(string.palindrome?('rotator')).to be true
    expect(string.palindrome?('redder')).to be true
  end
  it 'should accept a capitalized palindromic word' do
    expect(string.palindrome?('Madam')).to be true
  end

  it 'should accept a palindromic sentence with non-alphabetic characters' do
    expect(string.palindrome?('A car, a man, a maraca')).to be true
  end

  it 'should reject non-palindromic words' do
    expect(string.palindrome?('jason')).to be false
    expect(string.palindrome?('dude')).to be false
    expect(string.palindrome?('axyza')).to be false
  end
end

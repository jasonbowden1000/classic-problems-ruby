require 'spec_helper'
require 'problems/string'

describe 'String processing' do
  let (:string) { Problems::String.new }

  describe 'palindrome?' do
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
      expect(string.palindrome?('123A car, a man, a maraca')).to be true
    end

    it 'should reject non-palindromic words' do
      expect(string.palindrome?('jason')).to be false
      expect(string.palindrome?('dude')).to be false
      expect(string.palindrome?('axyza')).to be false
    end
  end

  describe 'romanToArabic' do
    it 'should return its arabic representation' do
      expect(string.romanToArabic('MDCCCLXVI')).to equal(1866);
      expect(string.romanToArabic('XIV')).to equal(14);
      expect(string.romanToArabic('LXXXIX')).to equal(89);
      expect(string.romanToArabic('XCI')).to equal(91);
      expect(string.romanToArabic('DCCCXC')).to equal(890);
      expect(string.romanToArabic('MCMLXXXIX')).to equal(1989);
    end
  end

  describe 'roman?' do
    it 'should not accept more than three consecutive numerals' do
      expect(string.roman?('XXXX')).to be false
    end
    it 'should reject any sequential repetition of V, L, or D' do
      expect(string.roman?('LL')).to be false
      expect(string.roman?('DDC')).to be false
      expect(string.roman?('XVV')).to be false
    end
    it 'should allow valid exceptions of order' do
      expect(string.roman?('IV')).to be true
      expect(string.roman?('IX')).to be true
      expect(string.roman?('XC')).to be true
      expect(string.roman?('XL')).to be true
      expect(string.roman?('CD')).to be true
      expect(string.roman?('CM')).to be true
      expect(string.roman?('IC')).to be false
      expect(string.roman?('LC')).to be false
      expect(string.roman?('VX')).to be false
      expect(string.roman?('DM')).to be false
    end
    it 'should disallow biconsecutive valid order exceptions' do
      expect(string.roman?('CDM')).to be false
      expect(string.roman?('IXC')).to be false
      expect(string.roman?('IVX')).to be false
      expect(string.roman?('XIXIX')).to be false
      expect(string.roman?('XVIV')).to be false
      expect(string.roman?('XIIV')).to be false
      expect(string.roman?('VIX')).to be false
      expect(string.roman?('XXC')).to be false
      expect(string.roman?('CCCXCCC')).to be false
      expect(string.roman?('LXL')).to be false
      expect(string.roman?('IXI')).to be false
      expect(string.roman?('IXXXI')).to be false
    end
    it 'should accept valid Roman numerals' do
      expect(string.roman?('XXX')).to be true
      expect(string.roman?('XIV')).to be true
      expect(string.roman?('CXC')).to be true
      expect(string.roman?('XIX')).to be true
    end
  end

  describe 'arabicToRoman' do
    it 'should return the Roman representation of an Arabic number' do
      expect(string.arabicToRoman(1666)).to eql('MDCLXVI');
      expect(string.arabicToRoman(91)).to eql('XCI');
    end
  end
end

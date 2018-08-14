require 'spec_helper'
require 'problems/search'

describe 'Binary Search' do
  let (:sorted_array) { [-13, -7, -7, 8, 8, 8, 8, 8, 8, 23, 33, 54, 91, 144, 1984, 1984, 2001] }
  let (:search) { Problems::Search.new }

  context 'on sorted array' do
    it 'should return the correct index' do
      expect(search.binary_search(sorted_array, 54)).to eq(11);
      expect(search.binary_search(sorted_array, 2001)).to eq(16);
      expect(search.binary_search(sorted_array, -13)).to eq(0);
    end
  end

  context 'on a sorted array with duplicates' do
    it 'should return the correct index' do
      expect(search.binary_search(sorted_array, -7)).to eq(1);
      expect(search.binary_search(sorted_array, 8)).to eq(3);
      expect(search.binary_search(sorted_array, 1984)).to eq(14);
    end
  end

  context 'when searching for an element not contained within a sorted array' do
    it 'should return nil' do
      expect(search.binary_search(sorted_array, 1)).to eq(nil);
      expect(search.binary_search(sorted_array, -20)).to eq(nil);
      expect(search.binary_search(sorted_array, 3000)).to eq(nil);
    end
  end

  context 'when searching for an element on an empty array' do
    it 'should return nil' do
      expect(search.binary_search([], 3000)).to eq(nil);
    end
  end
end


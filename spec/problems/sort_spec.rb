require 'spec_helper'
require 'problems/sort'

describe 'Sorter' do
  let (:sorter) { Problems::Sort.new }

  context "when merging sorted arrays" do
    it 'should return all elements in order' do
      a = [5, 7, 13, 13, 17]
      b = [3, 7, 11, 19]
      merged = [3, 5, 7, 7, 11, 13, 13, 17, 19]
      expect(sorter.merge_sorted(a, b)).to eql(merged)
      expect(sorter.merge_sorted(b, a)).to eql(merged)
      expect(sorter.merge_sorted(a, b)).not_to eql([1, 2, 3, 4, 5, 6, 7])
    end
  end
  context "when finding the intersection of two sorted arrays" do
    it "should return a sorted array free of duplicates" do
      a = [2, 2, 3, 3, 5, 5, 6, 7, 7, 8, 12]
      b = [2, 2, 5, 6, 6, 8, 8, 9, 10]
      intersection = [2, 5, 6, 8]
      expect(sorter.intersect_sorted(a, b)).to eql(intersection)
      expect(sorter.intersect_sorted(b, a)).to eql(intersection)
    end
  end
end

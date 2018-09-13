module Problems
  class Sort
    def merge_sorted(a, b)
      a = a.dup.reverse!
      b = b.dup.reverse!
      merged = []

      loop do
        break if a.empty? || b.empty?
        merged << (a.last < b.last ? a.pop : b.pop)
      end
      return merged + a + b
    end
  end
end

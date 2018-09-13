module Problems
  class Sort
    def merge_sorted(c, d)
      a = c.dup.reverse!
      b = d.dup.reverse!
      merged = []

      loop do
        break if a.empty? || b.empty?
        merged << (a.last < b.last ? a.pop : b.pop)
      end
      return merged + a + b
    end
  end
end

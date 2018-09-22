module Problems
  class Sort
    def intersect_sorted(a, b)
      i = 0
      j = 0
      intersection = []

      while (i < a.size && j < b.size)
        if a[i] == b[j] && (i == 0 || a[i] != a[i - 1])
          intersection << a[i]
          i += 1
          j += 1
        elsif a[i] < b[j]
          i += 1
        else
          j += 1
        end
      end
      intersection
    end

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

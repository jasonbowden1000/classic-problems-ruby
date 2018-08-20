module Problems
  class Search
    def binary_search(arr, value)
      lower = 0;
      upper = arr.size - 1

      while upper >= lower
        middle = (upper + lower) / 2

        if arr[middle] > value
          upper = middle - 1
        elsif arr[middle] < value
          lower = middle + 1
        else
          result = middle
          upper = middle - 1
        end
      end

      result
    end
  end
end

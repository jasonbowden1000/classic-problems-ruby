module Problems
  class Math
    def reverse_digits(n)
      r = 0
      sign = n <=> 0
      n = n.abs

      while n != 0
        r = r * 10 + n % 10
        n /= 10
      end

      r * sign
    end
  end
end

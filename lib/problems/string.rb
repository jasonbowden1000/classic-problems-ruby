module Problems
  class String
    ROMAN_HASH = {
      "I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10, "XL" => 40,
      "L" => 50, "XC" => 90, "C" => 100, "CD" => 400, "D" => 500, "M" => 1000
    }
    def arabicToRoman(n)
      ROMAN_HASH.reverse_each.to_h.inject('') do |acc, (roman, arabic)|
        while n >= arabic
          acc = acc + roman
          n -= arabic
        end
        acc
      end
    end

    def palindrome?(str)
      letters = str.downcase.scan(/\w/)
      letters == letters.reverse
    end

    def romanToArabic(str)
      str = str.split("").map { |n| ROMAN_HASH[n] }.reverse
      str.each_cons(2).inject(str[0]) do |acc, (prev, curr)|
        curr >= prev ? acc + curr : acc - curr
      end
    end

    def roman?(str)
      re = /^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/
      !!(re =~ str)
    end
  end
end

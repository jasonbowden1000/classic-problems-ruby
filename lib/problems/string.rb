module Problems
  class String
    def letter?(c)
      c =~ /[[:alpha:]]/
    end

    def palindrome?(str)
      i = 0
      j = str.length - 1
      result = true

      while i < j
        while !letter?(str[i]) && i < j
          i += 1
        end

        while !letter?(str[j]) && i < j
          j -= 1
        end

        if !str[i].casecmp?(str[j])
          result = false
        end

        i += 1
        j -= 1
      end

      result
    end
  end
end

module Problems
  class String
    def palindrome?(str)
      letters = str.downcase.scan(/\w/)
      letters == letters.reverse
    end
  end
end

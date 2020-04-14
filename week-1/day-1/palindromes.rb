def palindrome?(sentence)
    if sentence.delete(' ').downcase=== sentence.delete(' ').reverse.downcase
      return true 
    else 
      return false 
    end
  end
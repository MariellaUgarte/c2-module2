count_words=("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")
def countWords(count_words)
    words=count_words.split()
    words=words.map { |word| word.downcase()}
    count = {}
    words.each {|word| 
         count[word]=0 if !count.has_key?(word)
         count[word]=count[word] +1 
    }
    count
    
end
puts countWords(count_words)
print "First string: "
s1=gets.chomp
print "Second string: "
s2=gets.chomp
def longestString(s1,s2)
    if s1.length > s2.length
        return s1 
    elsif s1.length<s2.length 
        return s2
    else 
        return "Both have the same length"
    end
end
puts longestString(s1,s2)
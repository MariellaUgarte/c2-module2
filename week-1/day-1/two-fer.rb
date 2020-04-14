print "Who? "
name=gets.chomp
def twofer(name)
    if name.empty?
        return "One for you, one for me"
    else 
        return "One for #{name}, one for me"
    end
end
puts twofer(name)
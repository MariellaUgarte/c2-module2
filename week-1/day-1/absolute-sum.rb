print "First number: "
a=gets.chomp.to_f
print "Second number: "
b=gets.chomp.to_f
def result (a,b)
    if (a+b) < 0 
        result= (a + b) * -1 
        new_result=result - (result % 1)
        return new_result
    else 
        result=a+b
        new_result=result - (result % 1)
        return 
    end
end
puts "the absolute value is #{result(a,b).round(0)}"
print "Give me a positive integer: "
number=gets.chomp.to_i
$count=0
def hailstone(number)
    puts number
    $count+=1
    if number === 1
       puts "Number of steps: #{$count}"
    elsif number % 2 === 0
        hailstone (number / 2)
    else
        hailstone ((number * 3) + 1)
    end
end
puts hailstone(number)
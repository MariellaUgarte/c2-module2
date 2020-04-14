print "Your amount: "
amount=gets.chomp.to_f
print "Your interest rate per period : "
interest_rate=gets.chomp.to_f 
print "Your number of periods: "
period= gets.chomp.to_i
i=0
while (i < period)
    i = i+1
    amount= (interest_rate / 100 )* amount + amount 
end

puts amount.round(1)
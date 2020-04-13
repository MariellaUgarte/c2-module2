print "Chemical_amount:"
n=gets.chomp.to_f
print "Temperature: "
t=gets.chomp.to_f
print "Volume:"
v=gets.chomp.to_f
def calculate_pressure(n,t,v)
    p=(n*8.314*t)/v
end
puts calculate_pressure(n,t,v).round(2)

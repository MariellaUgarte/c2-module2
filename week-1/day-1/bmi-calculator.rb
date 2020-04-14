puts "Show me your weight(kg): "
weight= gets.chomp.to_f
puts "Show me your height(m): "
height= gets.chomp.to_f
my_bmi=(weight / height **2)
puts my_bmi.round(2)

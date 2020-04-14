puts "Choose your operation: add, subtract, divide, multiply, exponentiate or module"
operation=gets.chomp
puts "Number 1: "
a = gets.chomp.to_i
puts "Number 2: "
b=gets.chomp.to_i
class Calculator
    def add(a, b)
       a + b 
    end
  
    def subtract(a, b)
        a -b 
    end
     
    def divide(a, b)
        a / b
    end
    
    def multiply(a, b)
        a * b
    end
     
    def exponentiate(a, b)
        a ** b
    end
    
    def modulo(a, b)
        a % b
    end
  end
calculator=Calculator.new

if operation === "add"
    puts "Your answer is #{calculator.add(a,b)}"
elsif operation === "subtract"
    puts "Your answer is #{calculator.subtract(a,b)}"
elsif operation==="divide"
    puts "Your answer is #{calculator.divide(a,b)}"
elsif operation==="multiply"
    puts "Your answer is #{calculator.multiply(a,b)}"
elsif operation==="exponentiate"
    puts "Your answer is #{calculator.exponentiate(a,b)}"
else 
    puts "Your answer is #{calculator.modulo(a,b)}"
end

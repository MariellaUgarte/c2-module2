people_orders = {
  "julio" => "pizza",
  "diego" => "saltado",
  "andres" => "hamburguer",
  "ximena" => "ceviche",
  "felipe" => "pizza",
  "jon" => "saltado",
  "snow" => "ceviche",
  "pepe" => "fried chicken",
  "queen of dragons" => "ice cream",
  "jose" => "hamburguer",
  "jafeth" => "fried chicken"
}
def lunch_orders(people_orders)
        counter = Hash.new(0)

# iterate over the array, counting duplicate entries
        people_orders.each do |key, value|
        counter[value] += 1
        end

        counter.each do |key ,value|
        puts "#{key} =>#{value}"
        end
end 
lunch_orders(people_orders)
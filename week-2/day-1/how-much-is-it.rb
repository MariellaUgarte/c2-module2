def to_hash_array(str)
    a = []
    lines = str.lines
    first_line_as_array = lines.first[0..-2].split(", ")
    rest = lines[1..-1]
    rest.each { |line|
        line = line[0..-2]
        line_as_arr = line.split(", ")
        h = Hash[line_as_arr.each_with_index.collect {|element, index|
            [first_line_as_array[index], element]
        }]
        a.push(h)
    }
    return a
end

def caculate_value(arr)
    max_valued_item = 0
    i = 0
    total_value = arr.inject(0) {|total, h|
        price = h["(Symbol) Price"].split(" ")
        price[1] = price[1].to_f
        if price[0] == "PEN"
            price[1] /= 3
        elsif price[0] == "ARS"
            price[1] /= 40
        end
        price[0] = "USD"
        quantity = h["Amount"].to_i
        value = price[1] * quantity
        if value > arr[max_valued_item]["(Symbol) Price"].to_f * arr[max_valued_item]["Amount"].to_i
            max_valued_item = i
        end
        i += 1
        total + value
    }
    puts "total: #{total_value.round(2)}, max valued item: #{arr[max_valued_item]["Name"]}"
end

arr = to_hash_array("Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch 
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7")

caculate_value(arr)


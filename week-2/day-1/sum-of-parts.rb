def parts_sum(s)
    total = s.reduce(:+)
    arr = []
    s.inject(total) { |total, element| 
        arr.push(total)
        total -= element
    }
    arr.push(0)
    return arr
end

puts parts_sum([0, 1, 3, 6, 10])
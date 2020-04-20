def digital_root(x)
    return x / 10 == 0 ? x : x % 10 + digital_root(x / 10)
end

puts digital_root(54)
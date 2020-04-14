a = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]

def min (a)
    b = a[0]
    a.each do |i|
        if i < b
            b=i
        end     
    end 
    return b
end
def max (a)
    b = a[0]
    a.each do |i|
        if i > b
            b= i 
        end
    end 
    return b
end 
puts min(a)
puts max(a)
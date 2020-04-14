input_array=['Ruby','Rails','C42']
require 'set'

def length_finder(input_array)
    output = input_array.map {|string| string.length}.to_set
    
end
puts length_finder(input_array.to_a)
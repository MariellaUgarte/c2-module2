def randomElement(input_array, n)
    array=[]
    for i in (1..n)
        array << input_array.sample
    end
    array
end 
puts randomElement([1, 2, 3, 4, 5],2)
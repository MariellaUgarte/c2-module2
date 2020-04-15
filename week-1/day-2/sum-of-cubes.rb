def sumOfCubes(a, b)
    (a..b).inject(0){|sum, element| sum+=(element**3)}
end
puts sumOfCubes(1, 3)
def array_of_fixnums?(array)
    array.all? { |x| x.is_a? Integer }
  end
puts array_of_fixnums?([2,4,5,7.8])
# Fixnum ya no existe en las nuevas versiones de Ruby
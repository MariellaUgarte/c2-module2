class MyArray
    attr_reader :array
  
    def initialize(array)
      @array = array
    end
  
    def sum(initial_value = 0)
        return array.inject(:+) + initial_value unless block_given?
        sum = initial_value
        array.each {|n| sum += yield(n) }
        sum
    end
  end

  array  = MyArray.new([1,2,3])
  p array.sum(0) {|n| n ** 2}
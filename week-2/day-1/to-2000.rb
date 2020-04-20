class String
    def to_2000()
        upper_case = true
        str = ""
        self.each_char { |c|
            if c =~ /[[:alpha:]]/
                c = upper_case ? c.upcase : c.downcase
                upper_case = !upper_case
            end
            str << c
        }
        return str
    end
end

str = "Hola, como estas?"
puts str.to_2000()
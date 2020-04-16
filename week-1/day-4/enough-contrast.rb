class Color
    attr_reader :r, :g, :b
    def initialize(r, g, b)
      @r = r
      @g = g
      @b = b
    end
  
    def brightness_index
        (r*299 + g*587 + b*114) / 1000
    end
  
    def brightness_difference(another_color)
      (another_color.brightness_index - brightness_index).abs
    end
  
    def hue_difference(another_color)
        (r-another_color.r).abs +
        (g-another_color.g).abs +
        (b-another_color.b).abs
    end
  
    def enough_contrast?(another_color)
        brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
    end
  end
RGB = Color.new(42, 21, 58)
RGB2= Color.new(240,41,25)
puts RGB.enough_contrast?(RGB2)? "There is enough contrast between (#{RGB.r},#{RGB.g},#{RGB.b}) and (#{RGB2.r},#{RGB2.g},#{RGB2.b})":
"There is not enough contrast between (#{RGB.r},#{RGB.g},#{RGB.b}) and (#{RGB2.r},#{RGB2.g},#{RGB2.b})"
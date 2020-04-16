class Laptop
    def initialize(color, os)
      @color = color
      @os = os
      @power= true
    end
    def poweroff!
      if @power
        puts "It's shutting down."  
        @power=false
      else
        puts "It's already off."
      end
    end
  end

  Mariella_laptop = Laptop.new(:gray, :ubuntu)
  Mariella_laptop.poweroff!
  Mariella_laptop.poweroff!
class Bed
    def initialize(frame, type)
        @frame= frame
        @type= type
        @madebed = false
    end 
    def make!
        if !@madebed 
            puts "I have to make my bed."
            @madebed=true
        else 
            puts "My beb is already made."
        end
    end
end 
Mariella_bed = Bed.new(:WroughtIron, :single)
Mariella_bed.make!
Mariella_bed.make!
class Pencil 
    def initialize(brand, size)
        @brand= brand
        @size= size
        @broken= true
    end
    def broken!
        if @broken
            puts "I have to buy a new pencil."
            @broken=false 
        else 
            puts "I have a new one."
        end
        
    end
end
Mariella_pencil = Pencil.new(:Artesco, :small)
Mariella_pencil.broken!
Mariella_pencil.broken!
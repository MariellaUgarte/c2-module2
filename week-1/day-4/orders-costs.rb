class Restaurant
  attr_accessor :menu
    def initialize(menu)
      @menu = menu
    end
  
    def cost(*orders)
      orders.inject(0) {|total_cost, order|
      total_cost + 
      order.keys.inject(0) { |order_cost, item|
        order_cost + menu[item] * order[item]
      }
    }
    end
end

central = Restaurant.new({:rice => 3, :noodles => 2});
p central.cost({:rice => 1, :noodles => 1}, {:rice => 2, :noodles => 2});
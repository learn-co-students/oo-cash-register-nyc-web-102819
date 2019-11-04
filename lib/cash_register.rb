require 'pry'

class CashRegister
    attr_accessor :total, :add_item, :emdiscount, :price

    def initialize(discount=0)
    discount= 20
        @total= 0
        @item =[]
    end

    def add_item(item, price, quantity = 1)
        @total += quantity * price
    end

    def apply_discount
        if @discount == 0
          return "There is no discount to apply."
        end
        @total -= @total * @discount / 100.oo
        return "After the discount, the total comes to $#{@total}."
        end 

    def items
        item_names = []
        @cart.each do | item_info |
          #test expects product name * quantity...
          for qty in 1..item_info[:quantity] 
            item_names << item_info[:name]
         end 
     end 

  
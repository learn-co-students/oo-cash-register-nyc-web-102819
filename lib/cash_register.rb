require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @item_array = []
    end 

    def add_item(item_name, item_price, item_quantity=1)
        @item_quantity = item_quantity 
        @total += item_price * item_quantity
        item_quantity.times do
          @item_array << item_name
        end
        self.last_item = (item_price * item_quantity)
    end 

    def apply_discount
        @total = @total - @total * (@discount / 100.0) 
        if discount > 0 
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end 
    end 

    def items 
        @item_array
    end 

    def void_last_transaction
        @total -= last_item
        #@item_quantity.times do
        #@item_prices.pop
        #@total = @total - @price 
        #end 

        #if @items.count < 1 
        #    @total = 0 
        #end 
       
    end 

end 

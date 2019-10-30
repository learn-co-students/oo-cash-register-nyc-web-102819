require "pry"

class CashRegister
    def initialize(discount = nil)
        @discount = discount
        @total = 0
        @food = []
        @item_list = []
    end

    def discount
        @discount
    end

    
    def total=(total)
        @total = total
    end
    
    def total
        @total
    end

    def add_item(item, price, quantity = nil)
        if quantity
            
            quantity.times {@food << item}
            price = price * quantity
            @item_list << [item, price]
            @total += price
        else
            @item_list << [item, price]
            @food << item
            @total += price
        end
    end

    def apply_discount
        if @discount
            @total = @total * ((100.0 - @discount)/100)
            @total = @total.to_i
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @food
    end

    def void_last_transaction
        @total = @total.to_f
        #binding.pry
            @total -= @item_list[-1][1]
            @item_list =@item_list.pop()
            binding.pry
            #if @total == 1.76
            #    return 0.0
            #end
    end
end
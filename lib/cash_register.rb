
class CashRegister

    attr_accessor :total, :employee_discount, :items, :price

    def initialize(employee_discount = 0)
        @items = []
        @total = 0
        @employee_discount = employee_discount
    end

    def discount
        @discount = 20
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity

        x = 0
        while x < @quantity
            @items << title
            x +=1
        end
        @total += price * @quantity
    end
    
    def apply_discount
        if @employee_discount > 0
            new_total = @total - (@total * employee_discount/100)
            @total = new_total
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end 
    end

    def items
        @items
    end

    def void_last_transaction
        @quantity.times do
            self.items.pop
            @total = @total - @price
        end

        if @items.count <1
            @total = 0
        end
    end

end
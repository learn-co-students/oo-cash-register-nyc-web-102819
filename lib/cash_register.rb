class CashRegister
    attr_accessor :discount, :total, :items, :quantity
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity

        self.total += @price * quantity
        @quantity.times do 
            @items << title
        end
    end

    def apply_discount
        self.total -= self.total * @discount/100
        if @discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{self.total}."
        end
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




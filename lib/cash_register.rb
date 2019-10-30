class CashRegister
    attr_accessor :total, :discount, :title, :price, :items, :last_transaction

    @@total = 0

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
         self.last_transaction = price * quantity
    end

    def self.total
        @@total
    end

    def apply_discount
            self.total *= (100.0 -@discount.to_f)/100
        if @discount != 0
            p "After the discount, the total comes to $#{total.round(0)}."
        else 
            p "There is no discount to apply."
        end
    end


    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

end

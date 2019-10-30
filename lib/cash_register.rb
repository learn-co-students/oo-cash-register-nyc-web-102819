class CashRegister

    attr_reader :discount 
    attr_accessor :total, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, price, quantity = 1)
        items = []
        self.last_transaction = (price*quantity)
        quantity.times{self.total += price}
        quantity.times{@items.push(title)}
    end


    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        self.total = (@total-(@total*((@discount.to_f)/100)))
        return "After the discount, the total comes to $#{@total.to_i}."

    end


    def void_last_transaction
        self.total -= @last_transaction

    end

end

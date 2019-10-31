class CashRegister
    attr_accessor :items, :discount, :total, :last_transaction
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @item_array = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        self.last_transaction = price * quantity
        quantity.times do
            @item_array << title
        end
    end

    def apply_discount
        self.total = total - (total * (@discount/100.0))
        if @discount.positive?
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @item_array
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
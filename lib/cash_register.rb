require 'pry'

class CashRegister
    attr_accessor :total, :discount, :title, :price, :items, :last_item
    
    def self.total
        @@Total = 0
    end



    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end



    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
            quantity.times do
            @items << (title)
            end
            self.last_item = price * quantity

    end

    def apply_discount
      
        self.total *= (100-discount.to_f)/100

        if @discount != 0 
            "After the discount, the total comes to $#{self.total.round(0)}."
        else
            "There is no discount to apply."
        end

    end

    def void_last_transaction
        
        self.total -= last_item
        
    end





end

# new = CashRegister.new
# binding.pry
#dkd
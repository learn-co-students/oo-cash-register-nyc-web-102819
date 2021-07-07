class CashRegister
  
  attr_accessor :discount, :total, :last_transaction
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times{self.items << title}
    @total += price * quantity
    @last_transaction = price * quantity
  end
  
  def apply_discount
    @total -= @total * @discount / 100
    if @discount > 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= last_transaction
  end
  
end

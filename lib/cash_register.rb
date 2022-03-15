class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end
    def add_item(title, price, quantity = 1)
        self.total += price*quantity
        self.last_item_price = price * quantity
        quantity.times { self.items << title }
    end
    def apply_discount
        if discount > 0
        self.total = self.total - self.total * discount / 100
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        self.total -= self.last_item_price
    end
end
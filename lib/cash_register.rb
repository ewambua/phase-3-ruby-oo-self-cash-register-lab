class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        self.last_transaction = price * quantity
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        value = self.total * (self.discount.to_f / 100)
        self.total -= value.to_i
        if self.discount != 0
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
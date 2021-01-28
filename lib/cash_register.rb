
class CashRegister
    attr_accessor :total, :discount, :apply_discount, :items, :previously_added

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity=1)
        @total += price * quantity
        counting = quantity
        while counting > 0
            @items.push(title)
            counting -= 1
        end
        @previously_added = price * quantity
        puts @previously_added
    end


    def apply_discount()
        if discount > 0
            @total = (@total * ((100.0 - @discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        puts @previously_added
        @total -= self.previously_added
    end
end

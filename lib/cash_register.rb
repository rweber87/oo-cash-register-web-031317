class CashRegister

attr_accessor :total, :discount, :items, :previous_total

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(item, price, quantity=1)
		quantity.times do 
			@items << item
		end
		@previous_total = price * quantity
		@total += price * quantity
	end

	def apply_discount
		if @discount != 0
			self.total = (total * ((100.0 - discount.to_f)/100)).to_i
			"After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
	end

	def void_last_transaction
		self.total = self.total - self.previous_total
	end
	

end

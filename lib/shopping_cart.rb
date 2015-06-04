class ShoppingCart
  attr_reader :items

  def initialize
    @items = []
    @items = items
  end

  # def items
  #   @items
  # end

  def add_item(item)
    @items << item
  end

  def total_price
    # @items.map(&:price).reduce(:+)
    @items.map(&:price).inject { |sum, price| sum + price }
    # total = 0
    # @items.each do |item|
    #   total += item.price
    # end
    # total
  end

  def discount_price(percent)
    # total_price * (100 - percent)/100
    @items.each do |item|
      item.price = item.price - total_price/10
      return item.price
    end
  end

  def remove_item(item_name)
    @items.reject!{ |item| item.name == item_name}
  end
end

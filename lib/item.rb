class Item
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
    #Maintaining State(Is why we use instance variables. In oo if you know that you need to maintain state then we use instance variables in ruby or constructors in JS.) loval variables are scoped to the individual method. An instance variable allows you to use it throughout the whole class.
  end

  # def name
  #   @name
  # end
  #
  # def price
  #   @price
  # end
  #
  # def name=(next_name)
  #   @name = next_name
  # end
  #
  # def price=(next_price)
  #   @price = next_price
  # end
  #attr_accessor replaces all of the definitions because it is a getter and setter method.
end

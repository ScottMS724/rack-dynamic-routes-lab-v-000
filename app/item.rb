class Item
  attr_accessor :name, :price
  
  @@all = []

  def initialize(name,price)
    @name = name
    @price = price
    @@items << self 
  end
end

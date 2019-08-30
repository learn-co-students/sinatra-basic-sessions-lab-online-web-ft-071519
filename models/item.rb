class Item
  attr_accessor :item
  ITEMS = []

  def initialize(args={})
    @item = args[:item_name]
    ITEMS << self
  end

  def self.all
    ITEMS
  end

  def self.clear
    ITEMS.clear
  end
end

require_relative 'item'
class ShoppingList
  def initialize
    @list = []
  end
  def product_items(&block)
    instance_eval(&block)
  end
  def add_item(name, quantity)
    item = Item.new(name, quantity)
    @list << item
  end
  def show_items
    @list.each { |item| puts "Item name: #{item.name}, Item quantity = #{item.quantity}" }
  end
end
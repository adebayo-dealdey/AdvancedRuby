require_relative '../lib/shopping_list'
puts 'Welcome here, You can add to your shopping list here.'
puts 'You will be adding lots of goods into your list'
puts 'Type q to stop adding to your shopping list'
user_input = ''
shopping_list = ShoppingList.new
until user_input.match(/n|no/i)
  puts
  print 'Item name:        '
  item_name = gets.chomp
  print 'Quantity :        '
  quantity = Integer(gets) rescue 0
  puts
  shopping_list.product_items do
    add_item(item_name, quantity)
  end
  print 'Add more (y/n)?   '
  user_input = gets.chomp
end
puts
puts 'Below is the list of all the Items in your Shopping List...'
shopping_list.show_items

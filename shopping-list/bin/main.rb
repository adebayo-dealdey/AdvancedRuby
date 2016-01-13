require_relative '../lib/shopping_list'
puts 'Welcome here, You can add to your shopping list here.'
puts 'You will be adding lots of goods into your list'
puts 'Type q to stop adding to your shopping list'
user_input = ''
shopping_list = ShoppingList.new
puts 'Press 1 for Q and A session'
puts 'Press 2 for Automated session'
print 'Kindly input your response:       '
session = Integer(gets) rescue 2
if session == 1
until user_input.match(/n|no/i)
  puts
  print 'Item name:        '
  item_name = gets.chomp
  print 'Quantity :        '
  quantity = Integer(gets) rescue 0
  puts
  shopping_list.product_items do
    add(item_name, quantity)
  end
  print 'Add more (y/n)?   '
  user_input = gets.chomp
end
else
  puts
  shopping_list.product_items do
    add('Toothpaste', 2)
    add('Computer', 1)
  end
end
puts
puts 'Below is the list of all the Items in your Shopping List...'
shopping_list.show_items

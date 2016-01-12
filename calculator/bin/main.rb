require_relative '../lib/calculator'
puts 'Enter the arithmetic operation you want to perform: number operator number e.g 3 + 5'
print 'Enter Arithmetic Operation:     '
user_input = gets.chomp
user_input.validate_format
puts "The resultant is #{user_input.calculate}"

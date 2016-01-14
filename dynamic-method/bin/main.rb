require_relative '../lib/derived_string'
require_relative '../lib/method_analyser'

print 'Enter the string:    '
derived_string = DerivedString.new(gets.chomp)
puts "Enter a methods include default methods in a String class:\n     exclude?\n     split_by_spaces\n     split_by_dots\n     split_by\n     not_empty?"
method_name = gets.chomp
parameters = derived_string.method(method_name).parameters
method_analyser = MethodAnalyser.new(parameters)
method_analyser.instructions.each do |instruction|
  puts instruction
end
puts "The method structure is as follows: #{method_name}(#{method_analyser.parameters_names.join(', ')})"
print 'Supply the parameters in same structure as above:        '
user_input = gets.chomp
params = user_input.split(/,\s*/)
puts derived_string.send method_name, *params
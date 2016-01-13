require_relative '../lib/command_prompt'
print 'Enter the name of the method: '
method_name = gets.chomp
print 'Enter a line of code to implement: '
code_line = gets
CommandPrompt.add_method(method_name, code_line)
command = CommandPrompt.new
command.send(method_name)

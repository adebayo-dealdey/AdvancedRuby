require_relative '../lib/string'
string_instance = String.new('I am an instance of a string class. That is what I really am. Hey! Lucky. I am.')
# First Method
def string_instance.split_by_spaces
  split(/\s+/)
end
p string_instance.split_by_spaces

# Second Method
string_instance.instance_eval do
  class << self
    def split_by_dots
      split('.')
    end
  end
end
p string_instance.split_by_dots

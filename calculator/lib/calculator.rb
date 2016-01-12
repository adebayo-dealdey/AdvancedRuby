class String

  def calculate
    operations = split(' ')
    first_value = operations[0].to_f
    second_value = operations[2].to_f
    first_value.send(operations[1].to_sym, second_value).round(2)
  end

  def to_f
    numeric? ? Float(self) : 0.0
  end

  def validate_format
    unless match(/.\s.\s./)
      puts 'You have entered an invalid input format. I  should be number operator number e.g 3 + 5'
      exit
    end
  end

  private
  def numeric?
    Float(self) != nil rescue false
  end
end

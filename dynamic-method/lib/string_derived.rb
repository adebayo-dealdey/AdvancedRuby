class DerivedString < String

  def exclude?(substring)
    !include?(substring)
  end

  def split_by_spaces
    split(/\s+/)
  end

  def split_by_dots
    split('.')
  end
  
  def pad
    ' ' + self + ' '
  end
  
  def not_empty?
    !empty?
  end
  
  def count_vowels
    scan(/[aeiou]/i).count
  end

end

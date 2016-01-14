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

  def split_by(delimiter, case_sensitive=false)
    case_sensitive ? split(/#{delimiter}/) : split(/#{delimiter}/i)
  end

  def not_empty?
    !empty?
  end
end

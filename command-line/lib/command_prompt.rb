class CommandPrompt
  def self.add_method(method_name, code_line)
    define_method method_name do
      eval "#{ code_line }"
    end
  end
end

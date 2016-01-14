class MethodAnalyser
  attr_reader :instructions, :parameters_names
  def initialize(parameters)
    @parameters       = parameters
    @instructions     = []
    @parameters_names = []
    analyse
  end

  def analyse
    'This method has no parameter' if @parameters.length == 0
    @parameters.each do |attr, param_sym|
      @parameters_names << param_sym
      case attr
      when :opt
        @instructions << "This is an optional parameter: #{param_sym}"
      when :req
        @instructions << "This is a required parameter: #{param_sym}"
      when :rest
        @instructions << "This is a spat parameter: #{param_sym}"
      when :block
        @instructions << "This is a block, it requires you to supply a block of code: #{param_sym}"
      else
        @instructions << "I can not recognize this type of parameter: #{param_sym}"
      end
    end
    @instructions
  end
end
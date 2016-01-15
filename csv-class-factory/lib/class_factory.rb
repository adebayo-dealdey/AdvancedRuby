class ClassFactory
  class << self
    def generate(csv_factory, object_container)
      Class.new do
        attr_accessor *csv_factory.header
        define_method :initialize do |values|
          csv_factory.header.each_with_index do |function, index|
            send "#{ function }=", values[index]
          end
        end
        define_method :show do
          csv_factory.header.each do |function|
            return_value = send "#{ function }"
            print "#{ function.split(/[_]/).map { |n| n.capitalize }.join }: #{ return_value.capitalize }, "
          end
          puts
        end
        csv_factory.header.each do |function|
          action = Proc.new { object_container.each { |object| puts object.send("#{function }").capitalize } }
          self.class.send :define_method, function.to_sym, action
        end
      end
    end
  end
end

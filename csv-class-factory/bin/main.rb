require_relative '../lib/csv_factory'
require_relative '../lib/class_factory'
print 'Enter the name of the CSV file you want to open:    '
file_name = gets.downcase.strip
csv_factory = CsvFactory.new
csv_factory.factory(file_name)
CLASS_NAME = csv_factory.class_name
object_container = []
CLASS = Object.const_set CLASS_NAME, ClassFactory.generate(csv_factory, object_container)

csv_factory.file_rows.each do |row|
  object_container << CLASS.new(row)
end

object_container.each { |object| object.show }
print "Supply the field you want to show (#{ csv_factory.header.join(', ') }) : "
CLASS.send(gets.downcase.strip)

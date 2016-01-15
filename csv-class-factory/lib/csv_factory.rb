require 'csv'
class CsvFactory
  attr_reader :class_name, :header, :file_rows
  def factory(file)
    filename(file)
    @header, @file_rows = read
  end

  private
  def read
    file_content = CSV.read(@file)
    return sort_header(file_content.shift), file_content
  end

  def sort_header(header)
    header.each do |header_name|
      header_name.gsub!(/\s+/,'_')
    end
  end

  def filename(file)
    @file = file
    file_name = @file.split(/(\.csv)/)
    @class_name = file_name[0].split(/[,-_.]/).map { |char| char.capitalize }.join.chop
  end
end

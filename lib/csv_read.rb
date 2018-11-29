require 'CSV'
require_relative 'convert_array.rb'

class CsvRead
  def process(file)
    t_file="t_#{file}"
    raw = CSV.read(file, {:headers => true, :col_sep => ',', :encoding => 'UTF-8'})
    types = CSV.read(t_file, {:headers => true, :col_sep => ',', :encoding => 'UTF-8'}).headers
    header = raw.headers
    start = ConvertArray.new(raw, header,types)
    data_array = start.process
    puts "received return:"
    puts data_array
  end
end
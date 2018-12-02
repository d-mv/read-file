require 'CSV'
require_relative 'convert_array.rb'

class CsvRead
  def process(file)
    csv = CSV.read(file, {:headers => true, :col_sep => ',', :encoding => 'UTF-8'})
    # read headers file for headers
    types = CSV.read("t_#{file}", {:headers => true, :col_sep => ',', :encoding => 'UTF-8'}).headers
    header = csv.headers
    start = ConvertArray.new(csv, header,types)
    data = start.process
  end
end
require_relative 'type_convert.rb'

class ConvertArray
  @raw
  @header
  @types

  def initialize(raw, header,types)
    @raw = raw
    @header = header
    @types=types
  end

  def process
    data_array = []
    @raw.each do |line|
      record = {}
      split_text = line.to_s.split(',')
      counter = 0
      @header.each do |element|
        if counter == 5 ? n = split_text.at(counter).chop! : n = split_text.at(counter)
        end
        # start=TypeConvert.new(n,@types[counter])
        # rec=start.type
        record[element] = n
        counter += 1
      end
      data_array << record
    end
    return data_array
  end
end
require_relative 'csv_read'
require_relative 'xml_read'
require_relative 'fill_db'
require_relative 'gmap_geo'
require_relative 'json_read'

class Start
  # set the parameters
  parameters = {fileName: 'file',
                tgtAddress: 'mongodb://127.0.0.1:27017/',
                tgtDb: 'transactions'}

  puts 'What is the source: CSV(csv), JSON(js), Google Geocoding (gg)?'
  source = gets.chomp

  # process the answer
  case source

  when 'csv'
    file = "#{parameters[:fileName]}.csv"
    start = CsvRead.new
    @data = start.process(file)
  when 'gg'
    puts 'Enter address: '
    addressRequested = gets
    start = GmapGeo.new
    @data = start.process(addressRequested)
  when 'js'
    file = "#{parameters[:fileName]}.json"
    start = JsonRead.new
    @data = start.process('file', file)
    # when 'xml' # TODO later?
    #   file = "#{param[:fileName]}.xml"
    #   start = XmlRead.new
    #   @data = start.process(file)
  else
    puts "What was that?"
  end

  puts @data
  # address = param[:mdb] + param[:db] # TODO later
  # start = FillDb.new(address)
  # fill = start.process(@dataArray,param[:db])

end
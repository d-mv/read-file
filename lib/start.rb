require_relative 'csv_read'
require_relative 'xml_read'
require_relative 'fill_db'


class Start
  # set the parameters
  param = {read: 'csv', xmlFile: 'xml_file.xml', csvFile: 'csv_file.csv',mdb: 'mongodb://127.0.0.1:27017/', db: 'transactions'}

  # launch appropriate process
  if param[:read] == 'csv'
    file = param[:csvFile]
    start = CsvRead.new
    @dataArray = start.process(file)
  else
    file = param[:xmlFile]
    start = XmlRead.new
    @dataArray = start.process(file)
  end

  address=param[:mdb]+param[:db]
  # start = FillDb.new(address)
  # fill = start.process(@dataArray,param[:db])


end
require 'mongo'

class FillDb
  @address

  def initialize(address)
    @address = address
    Mongo::Logger.logger.level = ::Logger::DEBUG
  end

  def process(dataArray)


      # client = Mongo::Client.new(@address, where)
      # db = client.database
      # puts db.collections.compact
      # push=


  end
end
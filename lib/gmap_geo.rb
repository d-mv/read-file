require 'net/http'
require_relative 'json_read'

class GmapGeo
  def process(address_requested)
    api_key = "" # API key is needed
    request = "https://maps.googleapis.com/maps/api/geocode/json?address=#{address_requested}&key=#{api_key}"
    puts request
    start = JsonRead.new
    data = start.process('string',response)
  end
end
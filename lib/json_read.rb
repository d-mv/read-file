require 'json'

class JsonRead
  def process(type, source)
    case type
    when 'file'
      file = File.read(source)
      data = JSON.parse(file)
    when 'string'
      data = JSON.parse(source)
    end
  end
end
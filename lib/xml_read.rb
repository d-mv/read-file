class XmlRead
  @db

  def process(file)
    puts file
    puts "hello"
    @db = {reply: 'XML-OK'}
  end
end
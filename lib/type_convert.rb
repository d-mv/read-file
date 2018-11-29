require 'date'

class TypeConvert
  @n
  @types

  def initialize(n, types)
    @n = n
    @types = types
    puts @n
    puts @types
  end

  def type
    case @types
    when 'boolean'
      return @n.to_bool
    when 'date'
      return DateTime.strptime(n)
    when 'datetime'
      return DateTime.parse(n)
    when 'float'
      return @n.to_f
    when 'integer'
      return @n.to_i
    when 'string'
      return @n.to_s
    else
      raise "Unknown Data Type"
    end

  end
end
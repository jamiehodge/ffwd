module FFWD
  class Option
  
    def initialize(args)
      @key   = args[:key]
      @value = args[:value]
    end
  
    def to_s
      "-#{key} #{value}"
    end
  
    private
  
    attr_reader :key, :value
  end
end

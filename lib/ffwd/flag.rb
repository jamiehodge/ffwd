module FFWD
  class Flag
  
    def initialize(args)
      @key   = args[:key]
      @value = args[:value]
    end
  
    def to_s
      value ? "-#{key}" : "-no#{key}"
    end
  
    private
  
    attr_reader :key, :value
  end
end


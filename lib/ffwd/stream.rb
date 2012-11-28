module FFWD
  class Stream
  
    def initialize(args)
      @id = args[:id]
    end
  
    def to_s
      "[#{id}]"
    end
  
    private
  
    attr_reader :id
  end
end

require_relative "stream"

module FFWD
  class Streams
  
    def initialize(args)
      @streams = args[:ids].map {|id| Stream.new(id: id) }
    end
  
    def to_s
      streams.join(" ")
    end
  
    private
  
    def streams
      @streams ||= []
    end
  end
end

require_relative "filter"
require_relative "streams"

module FFWD
  class ComplexFilter
  
    def initialize(&block)
      yield self if block_given?
    end
  
    def to_s
      graph.join("; ")
    end
  
    def add(args)
      graph << [
        Streams.new(ids: Array(args[:in])).to_s, 
        Filter.new(args[:filter]).to_s,
        Streams.new(ids: Array(args[:out])).to_s
        ].join(" ")
    end
  
    private
  
    def graph
      @graph ||= []
    end
  end
end

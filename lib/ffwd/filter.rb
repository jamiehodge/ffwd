module FFWD
  class Filter
  
    def initialize(args)
      @filter = args
    end
  
    def to_s
      filter.collect {|k,v| "#{k}=#{v}"}.join(",")
    end
  
    private
  
    attr_reader :filter
  end
end

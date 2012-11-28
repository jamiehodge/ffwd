require_relative "option"
require_relative "flag"

module FFWD
  class Options
  
    def initialize(args)
      @options = args || {}
    end
  
    def to_s
      options.collect do |k,v|
        if boolean?(v)
          Flag.new(key: k, value: v)
        else
          Option.new(key: k, value: v)
        end
      end.join(" ")
    end
  
    private
  
    attr_reader :options
  
    def boolean?(value)
      !!value == value
    end
  end
end

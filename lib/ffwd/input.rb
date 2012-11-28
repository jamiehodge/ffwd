require_relative "resource"
require_relative "filter"
require_relative "option"
require_relative "options"

module FFWD
  class Input
  
    def initialize(args)
      protocol = args[:protocol]
      path     = args[:path]
      filter   = args[:filter]
      options  = args[:options]
    
      @resource = Resource.new(protocol: protocol, path: path)
      @filter   = Filter.new(filter) if filter
      @options  = Options.new(options) if options
    end
  
    def to_s
      [filter, options, Option.new(key: :i, value: resource)].compact.join(" ")
    end
  
    private
  
    attr_reader :resource, :filter, :options
  end
end

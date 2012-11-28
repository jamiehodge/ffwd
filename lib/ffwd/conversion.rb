require_relative "options"
require_relative "input"
require_relative "output"

module FFWD
  class Conversion
  
    def initialize(&block)
      yield if block_given?
    end
  
    def options(args)
      @options = Options.new(args)
    end
  
    def input(args)
      inputs << Input.new(args)
    end
  
    def output(args)
      @output = Output.new(args)
    end
  
    def to_s
      [@options, inputs, @output].join(" ")
    end
    
    def inputs
      @inputs ||= []
    end
  end
end


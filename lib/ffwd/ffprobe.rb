require_relative "subprocess"
require_relative "options"

module FFWD
  class FFProbe
    
    def initialize(args={})
      @gateway = args.fetch(:gateway, Subprocess.new)
      @options = defaults.merge(args.fetch(:options, {}))
    end
    
    def call(str)
      gateway.call(cmd(str))
    end
   
    private
    
    attr_reader :gateway, :options
    
    def cmd(str)
      ["ffprobe", Options.new(options), str].compact.join(" ")
    end
    
    def defaults
      {
        v: "quiet",
        print_format: "json",
        show_format: true,
        show_streams: true
      }
    end
  end
end



require_relative "subprocess"
require_relative "options"

module FFWD
  class MPEG
    
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
      ["ffmpeg", Options.new(options), str].compact.join(" ")
    end
    
    def defaults
      { v: "quiet", y: true }
    end
  end
end



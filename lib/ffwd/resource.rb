module FFWD
  class Resource
  
    def initialize(args)
      @protocol = args[:protocol] || "file"
      @path     = Array(args[:path]).join("|")
    end
  
    def to_s
      "#{protocol}:#{path}"
    end
  
    private
  
    attr_reader :protocol, :path
  end
end

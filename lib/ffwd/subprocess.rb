require "open3"

module FFWD
  class Subprocess
    Capture = Struct.new(:out, :error, :success) do
      alias :success? :success
    end

    def call(cmd)
      out, error, status = Open3.capture3(cmd)
      Capture.new(out, error, status.success?)
    end
  end
end

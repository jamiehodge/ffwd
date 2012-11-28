require_relative "../../helper"
require_relative "../../../lib/ffwd/ffmpeg"

module FFWD
  class FFMPEGTest < MiniTest::Unit::TestCase
    
    def subject
      @ffmpeg ||= FFMPEG.new(gateway: gateway)
    end
    
    def gateway
      @gateway ||= MiniTest::Mock.new
    end

    def test_responds_to_call
      assert_respond_to(subject, :call)
    end

    def test_executes_default_cmd
      gateway.expect(:call, true, ["ffmpeg -v quiet -y"])
      subject.call(nil)
      gateway.verify
    end

    def test_executes_custom_cmd
      gateway.expect(:call, true, ["ffmpeg -v quiet -y conversion"])
      subject.call("conversion")
      gateway.verify
    end
  end
end


require_relative "../../helper"
require_relative "../../../lib/ffwd/ffprobe"

module FFWD
  class FFProbeTest < MiniTest::Unit::TestCase

    def subject
      @ffprobe ||= FFProbe.new(gateway: gateway)
    end
    
    def gateway
      @gateway ||= MiniTest::Mock.new
    end

    def test_responds_to_analyse
      assert_respond_to(subject, :call)
    end

    def test_executes_default_cmd
      gateway.expect(:call, true,
        ["ffprobe -v quiet -print_format json -show_format -show_streams"])
      subject.call(nil)
      gateway.verify
    end

    def test_executes_custom_cmd
      gateway.expect(:call, true,
        ["ffprobe -v quiet -print_format json -show_format -show_streams input"])
      subject.call("input")
      gateway.verify
    end
  end
end


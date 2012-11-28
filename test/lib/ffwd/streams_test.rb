require_relative "../../helper"
require_relative "../../../lib/ffwd/streams"

module FFWD
  class StreamsTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @streams ||= Streams.new(args)
    end
  
    def test_single_stream
      subject(ids: ["foo"])
      assert_equal("[foo]", subject.to_s)
    end
  
    def test_multiple_streams
      subject(ids: ["foo", "bar"])
      assert_equal("[foo] [bar]", subject.to_s)
    end
  end
end

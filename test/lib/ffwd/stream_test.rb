require_relative "../../helper"
require_relative "../../../lib/ffwd/stream"

module FFWD
  class StreamTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @stream ||= Stream.new(args)
    end
  
    def test_to_s
      subject(id: "foo")
      assert_equal("[foo]", subject.to_s)
    end
  end
end


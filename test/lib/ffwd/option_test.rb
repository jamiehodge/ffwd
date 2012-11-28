require_relative "../../helper"
require_relative "../../../lib/ffwd/option"

module FFWD
  class OptionTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @option ||= Option.new(args)
    end
  
    def test_to_s
      subject(key: :foo, value: "bar")
      assert_equal("-foo bar", subject.to_s)
    end
  end
end

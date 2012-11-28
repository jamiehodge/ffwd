require_relative "../../helper"
require_relative "../../../lib/ffwd/filter"

module FFWD
  class FilterTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @filter ||= Filter.new(args)
    end
  
    def test_single_filter
      subject(foo: "bar")
      assert_equal("foo=bar", subject.to_s)
    end
  
    def test_multiple_filters
      subject(foo: "bar", baz: "qux")
      assert_equal("foo=bar,baz=qux", subject.to_s)
    end
  end
end

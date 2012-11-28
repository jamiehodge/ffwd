require_relative "../../helper"
require_relative "../../../lib/ffwd/complex_filter"

module FFWD
  class ComplexFilterTest < MiniTest::Unit::TestCase
  
    def subject(&block)
      @complex_filter ||= ComplexFilter.new(&block)
    end
  
    def test_single_filter
      subject do |f|
        f.add(in: "foo", out: "bar", filter: { foo: "bar", baz: "qux"})
      end
      assert_equal("[foo] foo=bar,baz=qux [bar]", subject.to_s)
    end
  
    def test_multiple_streams
      subject do |f|
        f.add(in: "foo", out: "bar", filter: { foo: "bar", baz: "qux"})
        f.add(in: "bing", out: "bang", filter: { foo: "bar", baz: "qux"})
      end
      assert_equal(
        "[foo] foo=bar,baz=qux [bar]; [bing] foo=bar,baz=qux [bang]",
        subject.to_s
      )
    end
  end
end

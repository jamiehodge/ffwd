require_relative "../../helper"
require_relative "../../../lib/ffwd/options"

module FFWD
  class OptionsTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @options ||= Options.new(args)
    end
  
    def test_single_option
      subject(foo: "bar")
      assert_equal("-foo bar", subject.to_s)
    end
  
    def test_multiple_options
      subject(foo: "bar", baz: "qux")
      assert_equal("-foo bar -baz qux", subject.to_s)
    end
  
    def test_single_flag
      subject(foo: true)
      assert_equal("-foo", subject.to_s)
    end
  
    def test_multiple_flag
      subject(foo: false, bar: true)
      assert_equal("-nofoo -bar", subject.to_s)
    end
  
    def test_option_and_flag
      subject(foo: "bar", baz: true)
      assert_equal("-foo bar -baz", subject.to_s)
    end
  end
end

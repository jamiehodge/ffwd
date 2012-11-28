require_relative "../../helper"
require_relative "../../../lib/ffwd/input"

module FFWD
  class InputTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @input ||= Input.new(args)
    end
  
    def test_without_options
      subject(path: "foo")
      assert_equal("-i file:foo", subject.to_s)
    end
  
    def test_with_options
      subject(path: "foo", options: { baz: "qux"})
      assert_equal("-baz qux -i file:foo", subject.to_s)
    end
  
    def test_with_protocols
      subject(path: "foo", protocol: "bar")
      assert_equal("-i bar:foo", subject.to_s)
    end
  end
end

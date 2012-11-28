require_relative "../../helper"
require_relative "../../../lib/ffwd/flag"

module FFWD
  class FlagTest < MiniTest::Unit::TestCase
  
    def subject(args={})
      @flag ||= Flag.new(args)
    end
  
    def test_to_s_true
      subject(key: :foo, value: true)
      assert_equal("-foo", subject.to_s)
    end
  
    def test_to_s_false
      subject(key: :foo, value: false)
      assert_equal("-nofoo", subject.to_s)
    end
  end
end


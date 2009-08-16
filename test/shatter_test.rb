require 'test/unit'
require '../lib/shatter'
class ShatterTest < Test::Unit::TestCase
  def test_basic
    assert(TestBase.new.basic(:one=>1,:two=>2,:three=>3)==6)
  end 
  def test_method_conflict
    assert(TestBase.new.conflict(:message=>"world", :override=>"wrong")=="hello world")
  end
end
class TestBase
  include Shatter
  def basic parameters={}
    shatter(parameters) do
      one + two + three
    end
  end
  def conflict parameters={}
    shatter(parameters) do
      "#{override} #{message}"
    end
  end
  def override
    "hello"
  end
end

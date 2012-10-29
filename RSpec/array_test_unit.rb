=begin

 Array クラスのサンプルRSpec

 arr = []
 arr.empty? #=> 振舞として true を返すことを期待する
 arr.size   #=> 振舞として 0 を返すことを期待する
=end
require 'test/unit'
class ArrayTest < Test::Unit::TestCase
  def setup
    @empty_array = []
  end

  def test_empty?
    assert @empty_array.empty?
  end

  def test_size
    assert_equal 0, @empty_array.size
  end

  def tear_down
    @empty_array = nil
  end
end



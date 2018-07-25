require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
    @river.add_fish(Fish.new("Piranha"))
  end

  def test_bear_has_name()
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_bear_has_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach_contents()
    assert_equal(0, @bear.stomach_contents)
  end

  def test_catch_fish()
    @bear.catch_fish(@river)
    assert_equal(1, @bear.stomach_contents)
    assert_equal(0, @river.count_fish())
  end

  def test_roar()
    assert_equal("Roar!!", @bear.roar())
  end
end

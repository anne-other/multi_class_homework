require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Neon Tetra")
    @river.add_fish(@fish)
  end

  def test_count_fish()
    assert_equal(1, @river.count_fish())
  end

  def test_add_fish()
    @river.add_fish(Fish.new("Zebra Danio"))
    assert_equal(2, @river.count_fish())
  end

  def test_supply_fish_gets_fish
    fish = @river.supply_fish
    assert_equal(@fish, fish)
  end

  def test_supply_fish_river_loses_fish()
    @river.supply_fish
    assert_equal(0, @river.count_fish())
  end
end

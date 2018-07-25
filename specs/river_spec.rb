require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Neon Tetra")
    @river.add_fish(@fish)
    #or because the river will always have many fish, add an array of fish into the river.
  end

  def test_river_has_name()
    assert_equal("Amazon", @river.river_name())
  end

  def test_count_fish()
    assert_equal(1, @river.count_fish())
  end

  def test_add_fish()
    @river.add_fish(Fish.new("Zebra Danio"))
    assert_equal(2, @river.count_fish())
  end

  def test_supply_fish_gets_fish()
    fish = @river.supply_fish()
    assert_equal(@fish, fish)
    #assert_equal(Fish, supply_fish.class())
    #assert_equal("Neon Tetra", @fish.name())
  end

  def test_supply_fish_river_loses_fish()
    @river.supply_fish
    assert_equal(0, @river.count_fish())
  end
end

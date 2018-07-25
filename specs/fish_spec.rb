require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def test_fish_has_name()#setup()
    fish = Fish.new("Neon Tetra")
    assert_equal("Neon Tetra", fish.fish_name())
  end
end

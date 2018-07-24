require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end
end

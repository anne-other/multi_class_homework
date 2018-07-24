require('minitest/autorun')
require('minitest/rg')
require_relative('../river')

class RiverTest < MiniTest::Test

  def method_name
    @river = River.new("Amazon")
  end
end

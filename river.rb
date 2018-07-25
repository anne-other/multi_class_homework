class River

  attr_reader :river_name

  def initialize(river_name)
    @river_name = river_name
    @fish = []
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def count_fish()
    return @fish.size()
  end

  def supply_fish
    return @fish.pop()
    #return @fish.shift() if class is tested instead of specific fish
  end
end

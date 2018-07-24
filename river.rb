class River

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def count_fish()
    return @fish.size()
  end
end

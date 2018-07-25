class Bear

  attr_reader :bear_name, :type

  def initialize(bear_name, type)
    @bear_name = bear_name
    @type = type
    @stomach = []
  end

  def stomach_contents()
    return @stomach.size()
  end

  def catch_fish(river)
    @stomach.push(river.supply_fish())
  end

  def roar()
    return "Roar!!"
  end
end

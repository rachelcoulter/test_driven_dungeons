class Character
  attr_reader :name, :xp, :strength, :race, :dexterity, :intelligence

  def initialize(name: nil, race: nil)
    @name = name
    @xp = 0
    @race = race
  end

  def gain_xp(points)
    @xp += points
  end

  def strength=(strength)
    validate_d20 strength

    @strength = strength
  end

  def dexterity=(dexterity)
    validate_d20 dexterity

    @dexterity = dexterity
  end

  def intelligence=(intelligence)
    validate_d20 intelligence

    @intelligence = intelligence
  end

  def validate_d20(value)
    raise ArgumentError.new if value < 1 || value > 20
  end
end

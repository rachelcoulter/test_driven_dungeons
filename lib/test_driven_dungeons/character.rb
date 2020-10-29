class Character
  attr_reader :name, :xp, :strength, :race, :dexterity, :constitution,
              :intelligence, :wisdom, :charisma
  attr_accessor :hp

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

  def constitution=(constitution)
    validate_d20 constitution


    @constitution = constitution
  end

  def intelligence=(intelligence)
    validate_d20 intelligence

    @intelligence = intelligence
  end

  def wisdom=(wisdom)
    validate_d20 wisdom

    @wisdom = wisdom
  end

  def charisma=(charisma)
    validate_d20 charisma

    @charisma = charisma
  end

  def validate_d20(value)
    raise ArgumentError if value < 1 || value > 20
  end
end

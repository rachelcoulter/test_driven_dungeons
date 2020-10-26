class Character
  attr_reader :name, :xp, :strength

  def initialize(name: nil)
    @name = name
    @xp = 0
  end

  def gain_xp(points)
    @xp += points
  end

  def strength=(strength)
    raise ArgumentError.new if strength < 1 || strength > 20

    @strength = strength
  end

end

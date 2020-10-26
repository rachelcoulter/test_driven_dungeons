class Character
  attr_reader :name, :xp

  def initialize(name: nil)
    @name = name
    @xp = 0
  end

  def gain_xp(points)
    @xp += points
  end
end

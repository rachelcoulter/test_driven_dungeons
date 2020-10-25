class Player
  attr_reader :name, :characters

  def initialize(name: nil)
    @name = name
  end

  def add_character(character)
    characters << character
  end

  def characters
    @characters ||= []
  end
end
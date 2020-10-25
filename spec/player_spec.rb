RSpec.describe Player do

  it "has name" do
    name = "BoBo the Fat"
    player = Player.new(name: name)
    expect(player.name).to eq(name)
  end

  it "has characters" do
    player = Player.new
    character1 = {new: 'thing'}
    player.add_character(character1)
    expect(player.characters).to eq([character1])
  end

  it "can add multiple characters" do
    player = Player.new
    character1 = {new: 'thing'}
    player.add_character(character1)
    character2 = {new: 'thing2'}
    player.add_character(character2)
    expect(player.characters).to eq([character1, character2])
  end
end

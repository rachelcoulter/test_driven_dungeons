RSpec.describe Character do

  before :each do
    @character = Character.new(name: "BoBo the Fat")
  end

  it "has name" do
    expect(@character.name).to eq("BoBo the Fat")
  end

  it "gains experience" do
    xp1 = 100
    @character.gain_xp xp1
    expect(@character.xp).to eq(xp1)
    xp2 = 123
    @character.gain_xp xp2
    expect(@character.xp).to eq(xp1 + xp2)
  end

  it "has strength - min" do
    @character.strength = 1
    expect(@character.strength).to eq(1)
  end

  it "has strength - max" do
    @character.strength = 20
    expect(@character.strength).to eq(20)
  end

  it "validates strength values" do
    expect { @character.strength = 0 }.to raise_error
    expect { @character.strength = 21 }.to raise_error
  end
end
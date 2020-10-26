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

end
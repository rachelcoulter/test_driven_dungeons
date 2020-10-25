RSpec.describe Player do

  it "has name" do
    name = "BoBo the Fat"
    player = Player.new(name: name)
    expect(player.name).to eq(name)
  end
end

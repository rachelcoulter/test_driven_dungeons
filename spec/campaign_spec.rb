RSpec.describe Campaign do

  it "has players" do
    campaign = Campaign.new
    player1 = { new: 'thing' }
    campaign.add_player(player1)
    expect(campaign.players).to eq([player1])
  end

  it "can add multiple players" do
    campaign = Campaign.new
    player1 = { new: 'thing1' }
    campaign.add_player(player1)
    player2 = { new: 'thing2' }
    campaign.add_player(player2)
    expect(campaign.players).to eq([player1, player2])
  end
end

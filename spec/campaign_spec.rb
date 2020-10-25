RSpec.describe Campaign do

  it "has players" do
    campaign = Campaign.new
    player1 = {new: 'thing'}
    campaign.add_player(player1)
    expect(campaign.players).to eq([player1])
  end
end

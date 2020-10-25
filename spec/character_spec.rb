RSpec.describe Character do

  it "has name" do
    name = "BoBo the Fat"
    character = Character.new(name: name)
    expect(character.name).to eq(name)
  end
end
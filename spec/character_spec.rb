RSpec.describe Character do

  before :each do
    @character = Character.new(name: "BoBo the Fat", race: :elf)
  end

  it "has initial values" do
    expect(@character.name).to eq("BoBo the Fat")
    expect(@character.race).to eq(:elf)
  end

  it "gains experience" do
    xp1 = 100
    @character.gain_xp xp1
    expect(@character.xp).to eq(xp1)
    xp2 = 123
    @character.gain_xp xp2
    expect(@character.xp).to eq(xp1 + xp2)
  end

  it "has hp" do
    hp = 20
    @character.hp = hp
    expect(@character.hp).to eq(hp)
  end

  it "has hp" do
    hp = 20
    @character.hp = hp
    expect(@character.hp).to eq(hp)
  end

  it "has ac" do
    ac = 15
    @character.ac = ac
    expect(@character.ac).to eq(ac)
  end

  it "has strength" do
    @character.strength = 1
    expect(@character.strength).to eq(1)
    @character.strength = 20
    expect(@character.strength).to eq(20)
  end

  it "validates strength values" do
    expect { @character.strength = 0 }.to raise_error ArgumentError
    expect { @character.strength = 21 }.to raise_error ArgumentError
  end

  it "has dexterity" do
    @character.dexterity = 1
    expect(@character.dexterity).to eq(1)
    @character.dexterity = 20
    expect(@character.dexterity).to eq(20)
  end

  it "validates dexterity values" do
    expect { @character.dexterity = 0 }.to raise_error ArgumentError
    expect { @character.dexterity = 21 }.to raise_error ArgumentError
  end

  it "has constitution" do
    @character.constitution = 1
    expect(@character.constitution).to eq(1)
    @character.constitution = 20
    expect(@character.constitution).to eq(20)
  end

  it "validates constitution values" do
    expect { @character.constitution = 0 }.to raise_error ArgumentError
    expect { @character.constitution = 21 }.to raise_error ArgumentError
  end

  it "has intelligence" do
    @character.intelligence = 1
    expect(@character.intelligence).to eq(1)
    @character.intelligence = 20
    expect(@character.intelligence).to eq(20)
  end

  it "validates intelligence values" do
    expect { @character.intelligence = 0 }.to raise_error ArgumentError
    expect { @character.intelligence = 21 }.to raise_error ArgumentError
  end

  it "has wisdom" do
    @character.wisdom = 1
    expect(@character.wisdom).to eq(1)
    @character.wisdom = 20
    expect(@character.wisdom).to eq(20)
  end

  it "validates wisdom values" do
    expect { @character.wisdom = 0 }.to raise_error ArgumentError
    expect { @character.wisdom = 21 }.to raise_error ArgumentError
  end

  it "has charisma" do
    @character.charisma = 1
    expect(@character.charisma).to eq(1)
    @character.charisma = 20
    expect(@character.charisma).to eq(20)
  end

  it "validates charisma values" do
    expect { @character.charisma = 0 }.to raise_error ArgumentError
    expect { @character.charisma = 21 }.to raise_error ArgumentError
  end
end

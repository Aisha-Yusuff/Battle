require 'player'

describe Player do 
  describe '#name' do 
    it "returns players name" do 
      player = Player.new("Aisha")
      expect(player.name).to eq "Aisha"
    end
  end

  describe '#points' do 
    it "returns the hit points" do 
      player = Player.new("Aisha", 100)
      expect(player.points).to eq described_class::DEFAULT_HIT_POINTS
    end 
  end

  describe '#attack' do
    it "attacks the player" do
      player = Player.new("Aisha", 100)
      player_2 = Player.new("Jane", 100)
      expect(player_2).to receive(:receive_damage)
      player.attack(player_2)
    end  
  end 

  describe "#receive_damage" do 
    it "reduces the players hit points by 10" do 
      player = Player.new("Aisha", 100) 
      player_2 = Player.new("Jane", 100)
      actual = player_2.receive_damage
      expect(actual).to eq (90)
    end 
  end 
end 
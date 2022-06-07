require 'game'

describe Game do
  subject (:game) { Game.new(player_1, player_2) }
  let (:player_1) { double :Aisha}
  let (:player_2) { double :Jane}

  describe "#player_1" do 
    it "returns the first player's name" do
    expect(game.player_1).to eq player_1
    end 
  end

  describe "#player_2" do 
    it "returns the second player's name" do
    expect(game.player_2).to eq player_2
    end 
  end

  describe "#attack" do 
    it "causes damage to player" do 
      expect(game.player_2).to receive(:receive_damage)
      game.attack(player_2)
    end 
  end 

  describe "#current_turn" do 
    it "starts as player 1" do
      expect(game.current_turn).to eq player_1
    end 
  end

  describe "#switch_turns" do 
    it "switches the turn" do 
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end 

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end
end
class Game 
  # attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end 

  def current_turn
    @current_turn
  end 
 
  def player_1
    @players[0]
  end 

  def player_2
    @players[1]
  end 

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  private
  attr_reader :players
end

new = Game.new("jack", "jill")
p new.player_1
p new.player_2
p new.current_turn
new.opponent_of("jack")
p new.switch_turns
p new.current_turn

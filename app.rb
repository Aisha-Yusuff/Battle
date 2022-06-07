require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do 
  register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here
  get "/" do 
    erb :index
  end 

  post "/names" do 
    player_1 = Player.new(params[:name1])
    player_2 = Player.new(params[:name2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end 

  get "/play" do 
    @game = $game
    # p @game.player_1
    # p @game.player_2
    # p @game.current_turn
    erb :play
  end 

  get "/attack" do 
    @game = $game 
    p @game.current_turn
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end 

  post '/switch_turns' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end

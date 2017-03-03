require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)

  end
  run if app_file == $0

  post '/names' do
#    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2hp = $player1.attack($player2)
    erb(:attack)
  end
end

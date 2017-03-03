require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end
  run if app_file == $0


  get '/names' do
    erb(:index)
  end

  # get '/:player1' do
  #   session['player1'] = params['player1']
  # end
  #
  # get '/:player2' do
  #   session['player2'] = params['player2']
  # end

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2hp = "65"
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attack)
  end
end

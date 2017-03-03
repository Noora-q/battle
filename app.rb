require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end
  run if app_file == $0

  enable :sessions

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
    session['player1'] = params[:player1]
    session['player2'] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    @player2hp = "65"
    erb(:play)
  end
end

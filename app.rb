require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $player_1.attack($player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

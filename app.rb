require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    if !params[:user_phrase].include?(" ")
      @piglatinizer = PigLatinizer.new().piglatinize(params[:user_phrase])
    else
      @piglatinizer = PigLatinizer.new().to_pig_latin(params[:user_phrase])
    end
    erb :result

  end
end
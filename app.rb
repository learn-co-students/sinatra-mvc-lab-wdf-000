require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    user_input = params[:user_phrase]
    @pig = PigLatinizer.new
    @out = @pig.to_pig_latin(user_input)
    erb :out_put
  end

  get '/piglatinize' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params[:user_phrase]
    @pig = PigLatinizer.new
    @out = @pig.to_pig_latin(user_input)
    erb :out_put
  end
end

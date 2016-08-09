require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require "pry"

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @phrase = PigLatinizer.new(params[:user_phrase])
    @piglatinized = @phrase.to_pig_latin(@phrase.text)

    erb :result
  end
end

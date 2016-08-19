require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'sinatra/base'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    # binding.pry
    erb :piglatinize
  end


end

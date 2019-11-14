require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  # post '/' do
  #   text = PigLatinizer.new
  # end

  post '/piglatinize' do
    text = PigLatinizer.new
    @pl_text = text.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end

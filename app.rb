require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	post '/' do 
		@user_input = PigLatinizer.new
	end

	post '/piglatinize' do 
		user_input = params[:user_phrase]
		@pig = PigLatinizer.new
		@latinized = @pig.to_pig_latin(user_input)
		erb :latinized
	end
end
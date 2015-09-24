require 'sinatra'
require 'sinatra/reloader'
require_relative "./lib/create_phrases.rb"

adder_phraser = AdderPhrase.new


get '/phrases' do
 	@phrase = adder_phraser.random_do
 	@phrases = adder_phraser.phrases
 	erb :phrases
end

post '/phrases' do
	adder_phraser.add_phrase(params[:input_phrase])
	erb :phrases
end

get '/no_phrases' do
	erb :no_phrases
end





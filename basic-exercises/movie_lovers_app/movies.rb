require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative './lib/movies_code.rb'

reader= Reader.new

get '/' do
	erb :index
end

post '/imdb' do
reader.searcher(params[:user_input])

	erb :index
end


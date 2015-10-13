require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/time/:direction/:hour" do
	@number = params[:hour].to_i
	seconds_ago = @time * 60 * 60
	direction = params[:direction]
	time = direction == "before" ? Time.now - seconds_ago : Time.now + seconds_ago
	@formated_time = time.strftime("%d/%m/%Y %H:%M:%S")
	erb :time
end






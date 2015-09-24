require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/file_counter.rb"

num_words = nil

get "/" do
  @greetings = "What's your name?"
  erb :index
end

get "/upload_file" do
  @num_words = num_words
  erb :upload_file
end

post "/count_words" do
  tempfile = params[:file][:tempfile]
  file_count = FileCounter.new(tempfile)
  num_words = file_count.count_words
  redirect to("/upload_file")
end

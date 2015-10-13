require 'imdb'
require 'pry'

class Reader
	def initialize
		@poster_movies = []
	end

	def searcher(word)
		list_movies = Imdb::Search.new(word).movies()
		count = 0
		while count <= 9
			@poster_movies.push(list_movies[count].poster)
			count += 1
		end
	end
end	


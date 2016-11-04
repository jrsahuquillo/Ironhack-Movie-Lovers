require 'imdb'
require 'pry'
require_relative 'movie-lovers.rb'

class SearchMovies
	attr_reader :movies

	def initialize

	end

	def search_movies(query)
		results = Imdb::Search.new(query).movies
		i = 0
		@movies = []
		while @movies.length < 9
			if results[i].poster != nil
				@movies << Movie.new(results[i].title, results[i].poster)
			end
			i += 1
		end
			#@movies.each {|movie| puts "#{movie.title}: #{movie.poster}"}  #test
	end
end

# search1 = SearchMovies.new("star")
# search1.search_movies




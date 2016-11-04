require 'imdb'
require 'pry'


class Movie
	attr_accessor :title, :poster
	def initialize(title, poster)
		@title = title
		@poster = poster
	end	
end


require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './lib/search-movie.rb'

set :haml, format: :html5

@@imdbsearcher ||= SearchMovies.new
enable(:sessions)

get("/") do
  erb(:index)
end


post("/results") do
	@@imdbsearcher.search_movies(params[:results])
	
  redirect to("/posters")
end

get("/posters") do
	@found_movies = @@imdbsearcher.movies
	erb(:results)	
end
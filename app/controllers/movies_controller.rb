class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    the_id = params.fetch("an_id")
    @the_director = Director.where({ :id => the_id }).at(0)
    @the_movie = Movie.where({ :id => the_id }).at(0)
    render({ :template => "movie_templates/show2.html.erb"})
  end

end

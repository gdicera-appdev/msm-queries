class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    @list_of_characters = Character.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id }).at(0)
    @the_director = Director.where({ :id => the_id }).at(0)
    @the_character = Character.where({ :id => the_id }).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id })
    render({ :template => "actor_templates/show3.html.erb"})
  end

end

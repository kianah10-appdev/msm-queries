class DirectorsController < ApplicationController


  def index
    @list_of_directors = Director.all
      render({ :template=> "directors_templates/index.html.erb"})
  end
  
  def wisest
    @oldest = Director.where.not({ :dob => nil}).order({:dob => :asc}).at(0)
    render({:template=> "directors_templates/eldest.html.erb"})
  end

  def director_details
    #params looks like {"an_id"="42"}

    the_id = params.fetch("an_id")
    @the_director = Director.where({ :id => the_id}).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id})
    render({:template=> "directors_templates/show.html.erb"})

  end
  def movie_details
    the_id = params.fetch("an_id")
    @the_movie_one = Movie.where({ :id => the_id}).at(0)
    @find_director = Movie.where({ :director_id => @the_movie_one.id})
    render({:template=> "directors_templates/movie_dets.html.erb"})
  end

  def index_movies
    @list_of_movies = Movie.all
   # @the_movie_all = Movie.where({ :id => the_id}).at(0) 
   # @director_who = Movie.where({:director_id => @the_movie_all.id})
    render({ :template=> "directors_templates/index_movies.html.erb"})
  end
  def index_actors
    @list_of_actors = Actor.all
    render({ :template=> "directors_templates/index_actors.html.erb"})
  end
  def actor_details
    #params looks like {"an_id"="42"}

    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id}).at(0)
    @filmography = Movie.where({ :director_id => @the_actor.id})
    render({:template=> "directors_templates/actor_dets.html.erb"})

  end

  def new
    @youngest = Director.where.not({ :dob => nil}).order({:dob => :desc}).at(0)
    render({:template=> "directors_templates/youngest.html.erb"})
  end
end

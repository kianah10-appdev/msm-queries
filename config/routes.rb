Rails.application.routes.draw do
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "new" })
  get("/movies", { :controller => "directors", :action => "index_movies" })
  get("/actors", { :controller => "directors", :action => "index_actors" })
  get("/actors/:an_id", { :controller => "directors", :action => "actor_details" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/movies/:an_id", { :controller => "directors", :action => "movie_details" })
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action=> "index"})

  #get("/actors", { :controller => "actors", :action=> "index"})

  
end

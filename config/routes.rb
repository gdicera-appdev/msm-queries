Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/directors", { :controller => "directors", :action => "index" })


  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details" })
  get("/characters", {:controller => "characters", :action => "index"})


  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })

end

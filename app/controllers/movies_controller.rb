class MoviesController < ApplicationController

  # GET: /movies
  get "/movies" do
    Movie.all.to_json(include: :reviews)
  end


  # POST: /movies
  post "/movies" do
    
  end

  # GET: /movies/5
  get "/movies/:id" do
    
  end


  # PATCH: /movies/5
  patch "/movies/:id" do
    
  end

  # DELETE: /movies/5/delete
  delete "/movies/:id/delete" do
    
  end
end

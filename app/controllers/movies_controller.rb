class MoviesController < ApplicationController

  # GET: /movies
  get "/movies" do
    Movie.all.to_json(include: :reviews)
  end


  # POST: /movies
  post "/movies" do
    movie = Movie.create(params)
    if movie.id
      movie.to_json(include: :reviews)
    else
      movie.errors.full_messages.to_sentence
    end
  end

  # GET: /movies/5
  get "/movies/:id" do
    
   movie = Movie.find_by(id: params["id"])
    #Movie.find(params["id"])
    if movie
      movie.to_json(include: :reviews)
      else
        {errors: "MOVIE NOT FOUND"}.to_json

      end
  end


  # PATCH: /movies/5
  patch "/movies/:id" do
    movie = Movie.find_by_id(params["id"])
    if movie && movie.update(params)
      movie.to_json(include: :reviews)
    else
      {errors: "MOVIE COULD NOT BE UPDATED"}.to_json
    end
  end

  # DELETE: /movies/5/delete
  delete "/movies/:id" do
    movie = Movie.find_by_id(params["id"])
    if movie
      movie.destroy
      else
        {errors: "MOVIE COULD NOT BE DELETED"}.to_json
      end
  end
end

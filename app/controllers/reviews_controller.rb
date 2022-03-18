class ReviewsController < ApplicationController

  # GET: /reviews
  get "/reviews" do
    Review.all.to_json(include: :movie)
  end


  # POST: /reviews
  post "/reviews" do
    reviews = Review.create(params)
    if reviews.id
      reviews.to_json(include: :movie)
    else
      reviews.errors.full_messages.to_sentence
    end
  end

  # GET: /reviews/5
  get "/reviews/:id" do
    reviews = Review.find_by(id: params["id"])
    if reviews
      reviews.to_json(include: :movie)
      else
        {errors: "THIS REVIEW WAS NOT FOUND"}.to_json
  end
end


  # PATCH: /reviews/5
  patch "/reviews/:id" do
    reviews = Review.find_by_id(params["id"])
    if reviews && reviews.update(params)
      reviews.to_json(include: :movie)
    else
      {errors: "THIS REVIEW COULD NOT BE UPDATED"}.to_json
    end
  end

  # DELETE: /reviews/5/delete
  delete "/reviews/:id/delete" do
    reviews = Review.find_by_id(params["id"])
    if reviews
      reviews.destroy
      else
        {errors: "THIS REVIEW COULD NOT BE DELETED"}.to_json
      end
  end
end
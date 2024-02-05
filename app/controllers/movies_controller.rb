class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies.to_json(only: %i[id title release_date rating genre_id])
  end
end

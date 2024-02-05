class GenresController < ApplicationController
  def index
    @genres = Genre.all
    render json: @genres.to_json(only: %i[id name]), status: 200
  end
end

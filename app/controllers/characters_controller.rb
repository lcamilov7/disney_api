class CharactersController < ApplicationController
  def index
    @characters = Character.all

    render json: @characters.to_json(only: %i[id name age wight story movie_id]), status: 200
  end

  def show
    @character = Character.find(params[:id])
    if @character
      render json: @character
    else
      render json: {status: 404, message: 'Character not found'}
    end
  end
end

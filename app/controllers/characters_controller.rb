class CharactersController < ApplicationController
  before_action :set_character, only: %i[show destroy]

  def index
    @characters = Character.all

    render json: @characters.to_json(only: %i[id name age weight story movie_id]), status: 200
  end

  def show
    if @character
      render json: @character
    else
      render json: {status: 404, message: 'Character not found'}
    end
  end

  def create
    @character = Character.new(character_params)
    @character.movie_id = params[:movie_id]

    if @character.save

    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @character.destroy
    
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :age, :weight, :story)
  end
end

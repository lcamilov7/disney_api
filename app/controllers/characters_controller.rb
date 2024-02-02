class CharactersController < ApplicationController
  def index
    @characters = Character.all

    render json:
  end
end

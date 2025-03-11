class PokemonController < ApplicationController
  before_action :find_pokemon, only: [:show]

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def create
    pokemon = Pokemon.new(
      name: params[:name],
      nickname: params[:nickname],
      type: params[:type],
      poke_id: params[:poke_id],
      hp: params[:hp],
      attack: params[:attack],
      defense: params[:defense],
      speed: params[:speed],
      special_def: params[:special_def],
      special_atk: params[:special_atk],
      level: params[:level],
      experience_points: params[:experience_points],
      user_id: params[:user_id]
    )
    if pokemon.save
      render json: pokemon, status: :created
    else
      render json: pokemon.errors, status: :unprocessable_entity
    end
  end

  private

  def find_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end

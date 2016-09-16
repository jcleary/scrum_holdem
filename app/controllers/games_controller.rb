class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    game.save

    organiser = Player.new(name: params[:game][:organiser_name], game: game)
    organiser.save

    game.organiser = organiser
    game.save

    redirect_to game_path(game)
  end

  def show
    @game = Game.find params[:id]
  end

  private

  def game_params
    params.require(:game).permit(:name)
  end


end

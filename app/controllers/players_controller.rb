class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    game = Game.find_by(pin: params[:pin])
    redirect_to new_player_path if game.nil?

    player = Player.new(player_params)
    player.game = game

    if player.save
      redirect_to player_path(player)
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end



end

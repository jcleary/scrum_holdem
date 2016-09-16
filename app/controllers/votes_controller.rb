class VotesController < ApplicationController

  def create
    vote = Vote.create(vote_params)
    vote.save
    redirect_to vote_path(vote)
  end

  def show
    @vote = Vote.find params[:id]
    @game = @vote.game
  end

  private
  def vote_params
    params.require(:vote).permit(:player_id, :points)
  end

end

class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
  end


  def update
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:)
  end
end
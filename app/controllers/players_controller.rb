class PlayersController < ApplicationController

  before_action :set_game

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
  end


  def update
    @player = Player.find_by(id: params[:player_id])
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:name, :dexterity, :vitality, :logic, :willpower, :charisma, :empathy, :pos_features, :neg_features, :equipment)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
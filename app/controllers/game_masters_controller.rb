class GameMastersController < ApplicationController
  def new
    @game_master = GameMaster.new
  end

  def create
    @game_master = GameMaster.create(game_master_params)
  end

  def show
    @game_master = GameMaster.find_by(params[:game_master_id])
  end

  private
    def game_masters_params
      
    end
end
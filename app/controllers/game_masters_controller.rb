class GameMastersController < ApplicationController
  def new
    @game_master = GameMaster.new
  end

  def create
    @game_master = GameMaster.new(game_master_params)

    if @game_master.save
      session[:game_master_id] = @game_master.id
      redirect_to @game_master
    else
      flash[:danger] = "Registration failed!"
      render "new"
    end
  end

  def show
    @game_master = GameMaster.find_by(id: params[:id])
  end

  private

    def game_master_params
      params.require(:game_master).permit(:username, :email, :password)
    end
end
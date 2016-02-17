class SessionsController < ApplicationController
  def new
  end

  def create
    @game_master = GameMaster.find_by(email: params[:session][:email].downcase)
    if @game_master && @game_master.authenticate(password: params[:session][:password])
      session[:game_master_id] = @game_master.id
      redirect_to @game_master
    else
      flash[:danger] = "Game Master not found!"
      render "new"
    end
  end

  def destroy
    session[:game_master_id] = nil
    redirect_to root_path
  end
end
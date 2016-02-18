module GameMastersHelper
  def current_gm
    @game_master = GameMaster.find_by(id: session[:game_master_id])
  end

  def logged_in?
    session[:game_master_id]
  end
end

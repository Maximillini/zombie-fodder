module GameMastersHelper
  def current_user
    @user = GameMaster.find_by(session[:game_master_id])
  end

  def logged_in?
    session[:game_master_id]
  end
end
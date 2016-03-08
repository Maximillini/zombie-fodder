module GamesHelper

  def game_creator?
    logged_in? && current_gm.id == @game.game_master.id
  end
end

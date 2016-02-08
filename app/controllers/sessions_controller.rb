class SessionsController < ApplicationController
  def new
  end

  def create
    @game_master = GameMaster.find_by()
  end
end
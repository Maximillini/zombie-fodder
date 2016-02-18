class ApplicationController < ActionController::Base
  include GameMastersHelper

  private
    def current_gm
      @game_master = GameMaster.find_by(id: session[:game_master_id])
    end

    def logged_in?
      session[:game_master_id]
    end

    helper_method :current_gm, :logged_in?

    protect_from_forgery with: :exception
end

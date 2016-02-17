class ApplicationController < ActionController::Base
  include GameMastersHelper

  private
    def current_user
      @user = GameMaster.find_by(session[:game_master_id])
    end

    def logged_in?
      session[:game_master_id]
    end

    helper_method :current_user, :logged_in?

    protect_from_forgery with: :exception
end

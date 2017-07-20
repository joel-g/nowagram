class EntriesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @entries = @user.entries
    if session[:user_id]
      @self = User.find(session[:user_id])
    end
    render :index
  end

end

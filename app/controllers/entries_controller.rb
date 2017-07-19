class EntriesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @entries = @user.entries
    render :index
  end

end

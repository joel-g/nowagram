class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    if session[:user_id]
      @self = User.find(session[:user_id])
      @not_following = User.all - @self.following
    end
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to "/"
    else
      render :new, status: 400
    end
  end

  def show
    @entries = User.entries
  end

private
  def user_params
    params.require(:user).permit(:username, :name, :password)
  end
end

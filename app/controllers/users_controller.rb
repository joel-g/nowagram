class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to "/"
    else
      render :new, status: 400
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :name, :password)
  end
end

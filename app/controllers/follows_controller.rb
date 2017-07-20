class FollowsController < ApplicationController

  def create
    Follow.create(user_id: params[:user_id], follower_id: params[:follower_id])
    redirect_to "/"
  end

  def destroy
    # follow = Follow.find(.id)
    Follow.find(params[:id]).destroy
    redirect_to "/"
  end


  private

  def follow_params
    params.require(:follow).permit(:user_id, :follower_id)
  end

end

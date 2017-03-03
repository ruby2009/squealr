class FollowsController < ApplicationController

  before_action :require_user

  def create
    followee = User.find(params[:id])
    current_user.follow!(followee)
  end

  def destroy
    followee = User.find(params[:id])
    current_user.unfollow!(followee)
  end

end

class FollowsController < ApplicationController

  before_action :require_user

  def follow_unfallow_toggle
    followee = User.find(params[:id])
    current_user.toggle_follow!(followee)
    result = current_user.follows?(followee) ?
      "followed" : "unfollowed"
    render json: {result: result}
  end

  # def destroy
  #   followee = User.find(params[:id])
  #   current_user.unfollow!(followee)
  # end

end

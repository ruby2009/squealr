class UsersController < ApplicationController

  before_action :require_user, only: [:index]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, serializer: UserExpandedSerializer
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end

class SquealsController < ApplicationController

  before_action :require_user

  def index
    @squeals = Squeal.timeline(current_user)
    render json: @squeals, scope: current_user,
    scope_name: :current_user
  end

  def create
    @squeal = current_user.squeals.new(squeal_params)
    if @squeal.save
      render json: @squeal
    else
      render json: @squeal.errors.full_messages, status: 400
    end
  end

  private

  def squeal_params
    params.permit(:body)
  end

end

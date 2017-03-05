class SquealsController < ApplicationController

  before_action :require_user

  def index
    if current_user
      @squeals = Squeal.timeline(current_user)
    else
    	@squeals = Squeal.order(created_at: :desc)
    end
    render json: @squeals
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

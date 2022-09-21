class Api::V1::TipsController < ApplicationController

  def create
    tip = Tip.create(tip_params)
    render json: TipSerializer.new(tip), status: 201
  end

  private

  def tip_params
    params.permit(:uid, :location, :description, :user_id)
  end
end

class Api::V1::TipsController < ApplicationController
  def index
    user = User.find(params[:id])
    tips = user.tips
    render json: TipSerializer.new(tips), status: 201
  end

  def create
    tip = Tip.create!(tip_params)
  end

  private

  def tip_params
    params.permit(:uid, :location, :description, :user_id)
  end
end

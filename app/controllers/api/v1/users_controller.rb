class Api::V1::UsersController < ApplicationController

  def find_or_create
    user = User.find_or_create_user(user_params)
    if user && user_params[:oauth]
      if user.save
        render json: UserSerializer.new(user), status: 201
      else
        render json: { status: "User Not Found", code: 404, message: "User Not Found" }, status: 404
      end
    elsif user
      if user.save
        render json: UserSerializer.new(user), status: 201
      elsif user.authenticate(user_params[:password])
        render json: UserSerializer.new(user), status: 200
      else
        render json: { status: "Incorrect Password", code: 404, message: "Incorrect Password" }, status: 404
      end
    else
      render json: { status: "User Not Found", code: 404, message: "User Not Found" }, status: 404
    end
  end

  def find
    user = User.find_user(user_params)
    if user
      if user.authenticate(user_params[:password])
        render json: UserSerializer.new(user), status: 200
      else
        render json: { status: "Incorrect Password", code: 404, message: "Incorrect Password" }, status: 404
      end
    else
      render json: { status: "User Not Found", code: 404, message: "User Not Found" }, status: 404
    end
  end

  private
  def user_params
    params.permit(:email, :password, :oauth)
  end
end
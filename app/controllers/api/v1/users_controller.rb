class Api::V1::UsersController < ApplicationController
  def find_or_create
    user = User.find_or_create_user(user_params)
    if user && user_params[:oauth]
      if user != nil
        render json: UserSerializer.new(user), status: 201
      else
        render json: { status: "User Not Found", code: 404, message: "User Not Found" }, status: 404
      end
    else 
      if user.authenticate(params[:password])
        render json: UserSerializer.new(user), status: 200
      else
        render json: { status: "Incorrect Password", code: 404, message: "Incorrect Password" }, status: 404
      end
    end
  end

  def find
    # require 'pry'; binding.pry 
    user = User.find_by(email: params[:email])
    if user.is_a?(User)
      require 'pry'; binding.pry 
      if user.authenticate(params[:password])
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
class Api::V1::UsersController < ApplicationController
  
  def index
    render json: UserSerializer.new(User.all)
  end
  
  def show
    user = User.find_by_id(params[:id])
    if user
      render json: UserSerializer.new(user)
    else
      render json: { status: "User Not Found", code: 404, message: "User Not Found" }, status: 404
    end
  end

  def new
  end

  def create
    binding.pry
    user = User.new(user_params[:email])
    if user.save
      render json: UserSerializer.new(user), status: :created
    end
  end

  private
  def user_params
    params.permit(:email)
  end
end
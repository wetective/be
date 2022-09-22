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

  def find_or_create
    user = User.oauth_user(user_params)
    render json: UserSerializer.new(user), status: 201
    # user = User.new(email: user_params[:email])
    # if user.save
    #   render json: UserSerializer.new(user), status: :created
    # else
    #   user = User.find_by_id(user_params[:email])
    #   binding.pry
    #   render json: UserSerializer.new(user), status: 200
    # end
  end

  private
  def user_params
    params.permit(:email, :name)
  end
end
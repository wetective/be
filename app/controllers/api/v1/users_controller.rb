class Api::V1::UsersController < ApplicationController
  
  def index
    
  end
  
  def show
    
  end

  def new
    
  end

  def create
    @user = User.create!(user_params)
  end

  def destroy

  end

  def edit

  end

  def update

  end

  private
  def user_params
    params.permit(:first_name, :email, :password, :password_confirmation)
  end
end
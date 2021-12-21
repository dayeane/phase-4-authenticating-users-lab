class UsersController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def show
    user = User.find(params[:user_id])
    render json: user
  end

end

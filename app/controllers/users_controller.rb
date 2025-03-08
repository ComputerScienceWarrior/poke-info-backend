class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(username: params[:username], password: params[:password], email: params[:email])
    if user.save
      render json: user
    else
      render json: {error: user.errors}
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end

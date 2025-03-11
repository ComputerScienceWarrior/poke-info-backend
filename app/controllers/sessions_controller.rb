class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user&.authenticate(params[:password])
      render json: { userId: user.id, username: user.username }, status: :ok
    else
      render json: { message: 'Invalid credentials' }, status: :unauthorized
    end
  end
end

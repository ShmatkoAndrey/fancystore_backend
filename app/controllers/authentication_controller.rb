class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id, time: Time.now)
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime("%Y-%m-%d- %H:%M"),
                     username: @user.username }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  def get_current_user
    render json: @current_user
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end

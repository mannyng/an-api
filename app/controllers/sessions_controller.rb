class SessionsController < ApplicationController

  skip_before_action :authenticate

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      jwt = Auth.issue({user: user.id})
      render json: {id_token: jwt}
    else
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end

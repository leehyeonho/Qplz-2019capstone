class SessionController < ApplicationController
  def new
  end

  def create
    user = Signup.find_by(userid: params[:userid])
    if user && user.authenticate(params[:password])
      log_in user
      render '/home/index'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render '/home/index'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end

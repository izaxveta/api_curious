class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by_auth(request.env['omniauth.auth'])
    set_session
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def set_session
    if @user
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      redirect_to root_path
    end
  end
end
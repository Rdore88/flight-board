class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to
    else
      render "new"
    end
  end

  def create
  @user = User.find_by(name: params["name"])
  if @user && @user.password == params[:password]
    session[:current_user_id] = @user.id
    redirect_to flight_routes_path
  else
    flash[:error] = "Please make sure you have created a profile"
    redirect_to new_sessions_path
  end
end
end

class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_name(params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to users_url, :notice => "Logged in"
  	else
  		redirect_to log_in_url, alert: "Invalid N00b/password combination"
      render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to log_in_url, notice: "Logged out"
  end
end

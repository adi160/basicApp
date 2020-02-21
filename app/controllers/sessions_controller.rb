class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/articles'
    else
      flash[:alert] = "User not found! "
      redirect_to '/signin'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "you have logged out "
    redirect_to root_path
  end

end
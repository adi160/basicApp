class HomeController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(Email: params[:email])
    if @user.present? && @user.authenticate(params[:password])
      flash[:notice] = "welcome user. "
      redirect_to '/welcome'
    else
      flash[:alert] = "User not found! "
      redirect_to '/signin'
    end
 end
end

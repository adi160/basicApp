class HomeController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(Email: params[:email])
    if @user.present? && @user.authenticate(params[:password])
      redirect_to '/welcome'
    else
      redirect_to '/signin'
    end
 end
end

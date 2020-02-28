class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "successfully created! "
      redirect_to articles_path
    else
      flash[:alert] = "fill all the details correctly! "
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end

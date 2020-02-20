class UsersController < ApplicationController
  def signup
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "successfully created! "
      redirect_to signin_path
    else
      flash[:alert] = "fill all the details! "
      render 'signup'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end

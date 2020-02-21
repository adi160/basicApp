class HomeController < ApplicationController

  def new
  end

  def home
    redirect_to articles_path if logged_in?
  end

  def create
  end
  
end

class CommentsController < ApplicationController
  before_action :require_user, except: [:index]
  before_action :find_article!

  def index
    @comments = Comment.all
  end

  def show
  end
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to article_comments_path
    else
      render 'new'
    end
  end

  private

  def find_article!
    @article = Article.find_by(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end

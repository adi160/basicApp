class CommentsController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  before_action :set_comment, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index]

  def new
  end

  def edit
  end
  
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to article_path(@article)
  end

  def update
    @comment.update(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
		@comment.destroy
		redirect_to article_path(@article)
	end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = @article.comments.find(params[:id])
  end
  
end

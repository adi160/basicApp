class LikesController < ApplicationController
  before_action :require_user
  before_action :find_article, :count_like, :count_dislike

  def like
    if 
      flash[:notice] = "You can't like more than once"
    else
      @article.like = @total_like + 1
      @article.save
    end
    redirect_to article_path(@article)
  end

  def dislike
    if 
      flash[:notice] = "Cannot unlike"
    else
      @article.dislike = @total_dislike + 1
      @article.save
    end
    redirect_to article_path(@article)
  end


  private

  def find_article
    @article = Article.find(params[:article_id])
  end

  def count_like
    @total_like = @article.like
  end

  def count_dislike
    @total_dislike = @article.dislike
  end

end

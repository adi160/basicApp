class AddColumnsToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :like, :integer
    add_column :articles, :dislike, :integer
  end
end

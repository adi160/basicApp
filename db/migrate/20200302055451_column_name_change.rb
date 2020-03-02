class ColumnNameChange < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :comment_id, :article_id
  end
end

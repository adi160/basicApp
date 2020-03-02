class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :article

  validates :text, presence: true, length: { minimum: 5, maximum: 60 }
  validates :article_id, presence: true
  
end

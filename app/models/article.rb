class Article < ApplicationRecord

  belongs_to :user

  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
  validates :text, presence: true, length: { minimum: 5, maximum: 30 }
  validates :user_id, presence: true
  
end

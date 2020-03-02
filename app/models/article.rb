class Article < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :text, presence: true, length: { minimum: 5, maximum: 60 }
  validates :user_id, presence: true
  
end

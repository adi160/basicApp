class User < ApplicationRecord

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, presence: true, uniqueness:true,
    format: { with: VALID_EMAIL_REGEX }
    
    validates :password, confirmation: { case_sensitive: true }

    has_secure_password
end
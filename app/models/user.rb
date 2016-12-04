class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
	has_secure_password

  has_many :posts
  has_many :comments
  has_many :messages
  has_many :users_conversations
  has_many :conversations, through: :users_conversations
end

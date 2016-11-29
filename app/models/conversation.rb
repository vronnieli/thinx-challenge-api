class Conversation < ApplicationRecord
  has_many :users_conversations
  has_many :users, through: :users_conversations
  has_many :messages
end

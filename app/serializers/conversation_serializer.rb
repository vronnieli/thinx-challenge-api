class ConversationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :messages
  has_many :users
end
